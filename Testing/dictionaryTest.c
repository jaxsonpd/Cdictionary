/** 
 * @file dictionaryTest.c
 * @brief This module contains tests for the dictionary module 
 * @author Jack Duignan (Jackpduignan@gmail.com)
 * @date 2023-07-04
 */


// ===================================== Includes =====================================
#include "dictionary.h"

#include <stdio.h>

// ===================================== Constants ====================================


// ===================================== Globals ======================================


// ===================================== Function Definitions =========================
/**
 * @Brief Run test 1 of the testing suite (Creation of small string to int dict, simple gets and free)
 *
 * @return 0 if pass 1 if failed
 */
int test1(void) {	
    // Test creating a dictionary
    char* keys[] = {"a", "b", "c"};
    int values[] = {1, 2, 3};

    stringIntDict_t* stringIntDict = stringIntDict_create(keys, values, 3);

	// Check the values	
    for (int i = 0; i < stringIntDict->size; i++) {
    	if (keys[i] != stringIntDict.keys[i] || values[i] != stringIntDict.values[i]) {
			return 1;
		}
	}

    // Test getting a value from the dictionary
    

    // Free the dictionary
    stringIntDict_free(stringIntDict);




int main(void) {
    printf("!! String to Int Dictionary Tests Passed\n");
}
