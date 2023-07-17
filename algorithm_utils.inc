// Constants
#define MAX_ARRAY_SIZE 1000

// Bubble Sort
forward Algorithm_BubbleSort(arr[], size);

// Binary Search
forward Algorithm_BinarySearch(arr[], size, key);

// Quick Sort
forward Algorithm_QuickSort(arr[], left, right);

// Linear Search
forward Algorithm_LinearSearch(arr[], size, key);

// Selection Sort
forward Algorithm_SelectionSort(arr[], size);

// Insertion Sort
forward Algorithm_InsertionSort(arr[], size);

// Implementation: Bubble Sort
Algorithm_BubbleSort(arr[], size) {
    new i, j, temp;
    for (i = 0; i < size - 1; i++) {
        for (j = 0; j < size - i - 1; j++) {
            if (arr[j] > arr[j + 1]) {
                temp = arr[j];
                arr[j] = arr[j + 1];
                arr[j + 1] = temp;
            }
        }
    }
}

// Implementation: Binary Search
Algorithm_BinarySearch(arr[], size, key) {
    new low = 0, high = size - 1, mid;
    while (low <= high) {
        mid = (low + high) / 2;
        if (arr[mid] == key) {
            return mid;
        } else if (arr[mid] < key) {
            low = mid + 1;
        } else {
            high = mid - 1;
        }
    }
    return -1; // Key not found
}


// Function to get array size at runtime
Algorithm_GetArraySize(arr[]) {
    new size = 0;
    while (arr[size] != 0) {
        size++;
    }
    return size;
}

// Implementation: Quick Sort
Algorithm_QuickSort(arr[], left, right) {
    new stack[MAX_ARRAY_SIZE];
    new top = -1;

    stack[++top] = left;
    stack[++top] = right;

    while (top >= 0) {
        right = stack[top--];
        left = stack[top--];

        new pivot = arr[right];
        new i = (left - 1);

        for (new j = left; j <= right - 1; j++) {
            if (arr[j] < pivot) {
                i++;
                new temp = arr[i];
                arr[i] = arr[j];
                arr[j] = temp;
            }
        }

        new temp = arr[i + 1];
        arr[i + 1] = arr[right];
        arr[right] = temp;

        new partition = i + 1;

        if (partition - 1 > left) {
            stack[++top] = left;
            stack[++top] = partition - 1;
        }

        if (partition + 1 < right) {
            stack[++top] = partition + 1;
            stack[++top] = right;
        }
    }
}

// Implementation: Linear Search
Algorithm_LinearSearch(arr[], size, key) {
    for (new i = 0; i < size; i++) {
        if (arr[i] == key) {
            return i;
        }
    }
    return -1; // Key not found
}

// Implementation: Selection Sort
Algorithm_SelectionSort(arr[], size) {
    for (new i = 0; i < size - 1; i++) {
        new min_index = i;
        for (new j = i + 1; j < size; j++) {
            if (arr[j] < arr[min_index]) {
                min_index = j;
            }
        }

        if (min_index != i) {
            new temp = arr[i];
            arr[i] = arr[min_index];
            arr[min_index] = temp;
        }
    }
}

// Implementation: Insertion Sort
Algorithm_InsertionSort(arr[], size) {
    new i, j, key;
    for (i = 1; i < size; i++) {
        key = arr[i];
        j = i - 1;

        while (j >= 0 && arr[j] > key) {
            arr[j + 1] = arr[j];
            j = j - 1;
        }
        arr[j + 1] = key;
    }
}


