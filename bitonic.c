#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>

#define ASCENDING 1
#define DESCENDING 0

// Troca dois inteiros
void swap(int *a, int *b) {
    int temp = *a;
    *a = *b;
    *b = temp;
}

// Compara e troca conforme a direção
void compareAndSwap(int arr[], int i, int j, int dir) {
    if ((dir == ASCENDING && arr[i] > arr[j]) ||
        (dir == DESCENDING && arr[i] < arr[j])) {
        swap(&arr[i], &arr[j]);
    }
}

// Funde sequência bitônica em sequência ordenada
void bitonicMerge(int arr[], int low, int cnt, int dir) {
    if (cnt > 1) {
        int k = cnt / 2;
        for (int i = low; i < low + k; i++) {
            compareAndSwap(arr, i, i + k, dir);
        }
        bitonicMerge(arr, low, k, dir);
        bitonicMerge(arr, low + k, k, dir);
    }
}

// Constrói recursivamente sequência bitônica e ordena
void bitonicSort(int arr[], int low, int cnt, int dir) {
    if (cnt > 1) {
        int k = cnt / 2;
        // Ordena a primeira metade em ordem crescente
        bitonicSort(arr, low, k, ASCENDING);
        // Ordena a segunda metade em ordem decrescente
        bitonicSort(arr, low + k, k, DESCENDING);
        // Funde a sequência inteira na direção indicada
        bitonicMerge(arr, low, cnt, dir);
    }
}

// Função auxiliar para imprimir o vetor
void printArray(int arr[], int n) {
    for (int i = 0; i < n; i++) {
        printf("%d ", arr[i]);
    }
    printf("\n");
}

// Verifica se n é potência de dois (ordenação bitônica exige tamanho potência de 2)
bool isPowerOfTwo(int n) {
    return (n > 0) && ((n & (n - 1)) == 0);
}

int main() {
    int n;

    printf("Enter number of elements (power of 2): ");
    if (scanf("%d", &n) != 1 || n <= 0) {
        printf("Invalid input. Please enter a positive integer.\n");
        return 1;
    }

    if (!isPowerOfTwo(n)) {
        printf("Error: Bitonic sort requires the number of elements to be a power of 2.\n");
        return 1;
    }

    int *arr = (int *)malloc(n * sizeof(int));
    if (!arr) {
        printf("Memory allocation failed.\n");
        return 1;
    }

    printf("Enter %d integers:\n", n);
    for (int i = 0; i < n; i++) {
        if (scanf("%d", &arr[i]) != 1) {
            printf("Invalid input. Please enter integers only.\n");
            free(arr);
            return 1;
        }
    }

    printf("Original array:\n");
    printArray(arr, n);

    // Ordena em ordem crescente
    bitonicSort(arr, 0, n, ASCENDING);

    printf("Sorted array (Ascending):\n");
    printArray(arr, n);

    free(arr);
    return 0;
}


