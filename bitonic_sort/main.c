#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include <omp.h>

#define CRESCENTE 1
#define DECRESCENTE 0

#define THRESHOLD 1024

bool menorIgualQueZero(int n) {
    return (n <= 0);
}

bool potenciaDeDois(int n) {
    return (n > 0) && ((n & (n - 1)) == 0);
}

int lerTamanhoVetor() {
    int tamanhoVetor;
    while (1) {
        printf("Informe a quantidade de elementos a serem ordenados: ");
        scanf("%d", &tamanhoVetor);

        if (menorIgualQueZero(tamanhoVetor)) {
            printf("Informe um valor positivo.\n");
        } else if (!potenciaDeDois(tamanhoVetor)) {
            printf("A ordenação bitônica exige que a quantidade de elementos seja uma potência de 2.\n");
        } else {
            break;
        }
    }
    return tamanhoVetor;
}

int* gerarElementos(int tamanhoVetor) {
    int *vetorElementos = (int *)malloc(tamanhoVetor * sizeof(int));

    if (vetorElementos == NULL) {
        printf("Erro de alocação de memória.\n");
        exit(1);
    }

    printf("Gerando %d elementos...\n", tamanhoVetor);

#pragma omp parallel
    {
        // utilizar numero da thread como seed para a geração do número aleatório pois
        // a utilização da função rand() em múltiplas threads
        // poderia ocasionar repetição de valores
        unsigned int seed = omp_get_thread_num();
        #pragma omp for
        for (int i = 0; i < tamanhoVetor; i++) {
            vetorElementos[i] = rand_r(&seed) % 100;
            // printf("Gerando %dº elemento: %d\n", i, vetorElementos[i]);
        }
    }
    return vetorElementos;
}

void imprimeVetor(int vetorElementos[], int tamanhoVetor) {
    for (int i = 0; i < tamanhoVetor; i++) {
        printf("%d ", vetorElementos[i]);
    }
    printf("\n");
}

void swap(int *a, int *b) {
    int temp = *a;
    *a = *b;
    *b = temp;
}

void compareAndSwap(int vetorElementos[], int i, int j, int direcao) {
    if ((direcao == CRESCENTE && vetorElementos[i] > vetorElementos[j]) ||
        (direcao == DECRESCENTE && vetorElementos[i] < vetorElementos[j])) {
        swap(&vetorElementos[i], &vetorElementos[j]);
        }
}

void bitonicMerge(int vetorElementos[], int inicio, int tamanhoVetor, int direcao) {
    if (tamanhoVetor > 1) {
        int meio = tamanhoVetor / 2;

        // Se a fatia for grande, paralelizaremos o loop de comparações
#pragma omp parallel for if(meio > THRESHOLD)
        for (int i = inicio; i < inicio + meio; i++) {
            compareAndSwap(vetorElementos, i, i + meio, direcao);
        }

        // Chamadas recursivas convertidas em tarefas
#pragma omp task shared(vetorElementos) if(tamanhoVetor > THRESHOLD)
        bitonicMerge(vetorElementos, inicio, meio, direcao);

#pragma omp task shared(vetorElementos) if(tamanhoVetor > THRESHOLD)
        bitonicMerge(vetorElementos, inicio + meio, meio, direcao);

        // Aguarda as duas metades da fusão terminarem antes de continuar
#pragma omp taskwait
    }
}

void bitonicSort(int vetorElementos[], int inicio, int tamanhoVetor, int direcao) {
    if (tamanhoVetor > 1) {
        int meio = tamanhoVetor / 2;

#pragma omp task shared(vetorElementos) if(inicio > THRESHOLD)
        {
            bitonicSort(vetorElementos, inicio, meio, CRESCENTE);
        }

#pragma omp task shared(vetorElementos) if(inicio > THRESHOLD)
        {
            bitonicSort(vetorElementos, inicio + meio, meio, DECRESCENTE);
        }

#pragma omp taskwait

#pragma omp critical
{
    printf("Sub-sequência Bitônica gerada (Inicio: %d, Tamanho: %d):\n", inicio, tamanhoVetor);
    // Imprime apenas o pedaço do vetor que está sendo processado
    for (int i = inicio; i < inicio + tamanhoVetor; i++) {
        printf("%d ", vetorElementos[i]);
    }
    printf("\n");
}
        bitonicMerge(vetorElementos, inicio, tamanhoVetor, direcao);
    }
}

int main() {
    int tamanhoVetor = lerTamanhoVetor();

    // geraçao de elementos aleatorios de forma paralela
    int *vetorElementos = gerarElementos(tamanhoVetor);

    // imprimeVetor(vetorElementos, tamanhoVetor);

#pragma omp parallel
    {
#pragma omp single
        {
            bitonicSort(vetorElementos, 0, tamanhoVetor, CRESCENTE);
        }
    }

    // imprimeVetor(vetorElementos, tamanhoVetor);

    free(vetorElementos);
    return 0;
}