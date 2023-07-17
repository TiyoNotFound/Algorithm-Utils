#include <a_samp>
#include <algorithm_utils>

#define MAX_ARRAY_SIZE1 10

main(){}

// Test Bubble Sort function
bool:TestBubbleSort() {
    new arr[MAX_ARRAY_SIZE1] = {5, 2, 7, 3, 1, 9, 6, 4, 8};
    new size = Algorithm_GetArraySize(arr);

    Algorithm_BubbleSort(arr, size);

    // Expected sorted array
    new expected[MAX_ARRAY_SIZE1] = {1, 2, 3, 4, 5, 6, 7, 8, 9};

    for (new i = 0; i < size; i++) {
        if (arr[i] != expected[i]) {
            return false;
        }
    }
    return true;
}

// Test Binary Search function
bool:TestBinarySearch() {
    new arr[MAX_ARRAY_SIZE1] = {1, 2, 3, 4, 5, 6, 7, 8, 9};
    new size = Algorithm_GetArraySize(arr);

    // Test existing key
    new key = 6;
    new index = Algorithm_BinarySearch(arr, size, key);
    if (index != 5) {
        return false;
    }

    // Test non-existing key
    key = 10;
    index = Algorithm_BinarySearch(arr, size, key);
    if (index != -1) {
        return false;
    }

    return true;
}

// Test Quick Sort function
bool:TestQuickSort() {
    new arr[MAX_ARRAY_SIZE1] = {5, 2, 7, 3, 1, 9, 6, 4, 8};
    new size = Algorithm_GetArraySize(arr);

    Algorithm_QuickSort(arr, 0, size - 1);

    // Expected sorted array
    new expected[MAX_ARRAY_SIZE1] = {1, 2, 3, 4, 5, 6, 7, 8, 9};

    for (new i = 0; i < size; i++) {
        if (arr[i] != expected[i]) {
            return false;
        }
    }
    return true;
}

// Test Linear Search function
bool:TestLinearSearch() {
    new arr[MAX_ARRAY_SIZE1] = {1, 2, 3, 4, 5, 6, 7, 8, 9};
    new size = Algorithm_GetArraySize(arr);

    // Test existing key
    new key = 6;
    new index = Algorithm_LinearSearch(arr, size, key);
    if (index != 5) {
        return false;
    }

    // Test non-existing key
    key = 10;
    index = Algorithm_LinearSearch(arr, size, key);
    if (index != -1) {
        return false;
    }

    return true;
}

// Test Selection Sort function
bool:TestSelectionSort() {
    new arr[MAX_ARRAY_SIZE1] = {5, 2, 7, 3, 1, 9, 6, 4, 8};
    new size = Algorithm_GetArraySize(arr);

    Algorithm_SelectionSort(arr, size);

    // Expected sorted array
    new expected[MAX_ARRAY_SIZE1] = {1, 2, 3, 4, 5, 6, 7, 8, 9};

    for (new i = 0; i < size; i++) {
        if (arr[i] != expected[i]) {
            return false;
        }
    }
    return true;
}


// Main function to run tests
public OnGameModeInit() {
    new tests_passed = 0;
    new tests_failed = 0;

    // Run the tests
    if (TestBubbleSort()) {
        print("Bubble Sort: Passed");
        tests_passed++;
    } else {
        print("Bubble Sort: Failed");
        tests_failed++;
    }

    if (TestBinarySearch()) {
        print("Binary Search: Passed");
        tests_passed++;
    } else {
        print("Binary Search: Failed");
        tests_failed++;
    }

    if (TestQuickSort()) {
        print("Quick Sort: Passed");
        tests_passed++;
    } else {
        print("Quick Sort: Failed");
        tests_failed++;
    }

    if (TestLinearSearch()) {
        print("Linear Search: Passed");
        tests_passed++;
    } else {
        print("Linear Search: Failed");
        tests_failed++;
    }

    if (TestSelectionSort()) {
        print("Selection Sort: Passed");
        tests_passed++;
    } else {
        print("Selection Sort: Failed");
        tests_failed++;
    }
    new arr[] = {5, 2, 7, 3, 1, 9, 6, 4, 8};
    new size = Algorithm_GetArraySize(arr);

    printf("Original Array: ");
    for (new i = 0; i < size; i++) {
        printf("%d ", arr[i]);
    }
    print("\n");

    Algorithm_InsertionSort(arr, size);

    printf("Sorted Array: ");
    for (new i = 0; i < size; i++) {
        printf("%d ", arr[i]);
    }
    print("\n");

    printf("Total Tests Passed: %d", tests_passed);
    printf("Total Tests Failed: %d", tests_failed);

    
    return 1;
}

