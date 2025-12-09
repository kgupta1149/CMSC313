#include <stdio.h>

void matmult(int result[3][3], int first[3][3], int second[3][3]) {
    for (int i = 0; i < 3; i++) {
        for (int j = 0; j < 3; j++) {
            result[i][j] = 0;
            for (int k = 0; k < 3; k++) {
                result[i][j] += first[i][k] * second[k][j];
            }
        }
    }
}

void matadd(int result[3][3], int first[3][3], int second[3][3]) {
    for (int i = 0; i < 3; i++)
        for (int j = 0; j < 3; j++)
            result[i][j] = first[i][j] + second[i][j];
}

void printMatrix(const char *label, int M[3][3]) {
    printf("%s", label);
    printf("    [%d %d %d]\n", M[0][0], M[0][1], M[0][2]);
    printf("    |%d %d %d|\n", M[1][0], M[1][1], M[1][2]);
    printf("    [%d %d %d]\n\n", M[2][0], M[2][1], M[2][2]);
}

int main() {
    int A[3][3] = {{1,2,3},{4,5,6},{7,8,9}};
    int B[3][3] = {{1,2,0},{3,4,5},{0,6,7}};
    int AB[3][3];
    int AB_plus_A[3][3];

    matmult(AB, A, B);
    matadd(AB_plus_A, AB, A);

    printMatrix("A =\n", A);
    printMatrix("B =\n", B);

    printf("A*B+A =\n");
    printf("        [%d %d %d]\n", AB_plus_A[0][0], AB_plus_A[0][1], AB_plus_A[0][2]);
    printf("        |%d %d %d|\n", AB_plus_A[1][0], AB_plus_A[1][1], AB_plus_A[1][2]);
    printf("        [%d %d %d]\n", AB_plus_A[2][0], AB_plus_A[2][1], AB_plus_A[2][2]);

    return 0;
}

