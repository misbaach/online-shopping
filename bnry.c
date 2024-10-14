#include <stdio.h>

void cetakArray(int array[], int ukuranArray, int l, int m, int r);
void binarySearch(int array[], int ukuranArray, int cari);

int main() {
    int n = 10;
    int data[] = {2, 5, 9, 12, 14, 15, 19, 21, 28, 31};
    int cari = 19;

    binarySearch(data, n, cari);

    return 0;
}

void binarySearch(int array[], int ukuranArray, int cari) {
    int mid;
    int left = 0;
    int right = ukuranArray - 1;
    int flag = 0;
    int stepCounter = 0;
    
    // Algoritma Binary Search
    while ((left <= right) && (flag == 0)) {
        stepCounter++;
        mid = (left + right) / 2;
        printf("\n#Tahap %d\n", stepCounter);
        printf(" Left: %d, Mid: %d, Right: %d\n", left, mid, right);
        printf(" Data tengah: %d, Cari: %d\n", array[mid], cari);
        // menampilkan proses
        cetakArray(array, ukuranArray, left, mid, right);
        // proses binary search
        if (array[mid] == cari) {
            flag = 1;
        } else if (cari < array[mid]) {
            printf("%d < %d, maka cari di kiri\n", cari, array[mid]);
            right = mid - 1;
        } else {
            printf("%d > %d, maka cari di kanan\n", cari, array[mid]);
            left = mid + 1;
        }
    }
    // mengecek apakah angka yang dicari dapat ditemukan
    printf("\n");
    if (flag == 1) {
        printf("angka %d dapat ditemukan\n", cari);
    } else {
        printf("angka %d tidak dapat ditemukan\n", cari);
    }
    printf("Jumlah langkah: %d\n", stepCounter);
}

void cetakArray(int array[], int ukuranArray, int l, int m, int r) {
    for (int i = 0; i < ukuranArray; i++) {
        printf(" ");
        if ((i < l) || (i > r)) {
            printf("x");
        } else {
            if (i == m) {
                printf("[%d]", array[i]);
            } else {
                printf("%d", array[i]);
            }
        }
    }
    printf("\n");
}
