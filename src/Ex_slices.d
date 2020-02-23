// Slices exercise 1
// Iterate over an array and halve the value of even numbers in the array

import std.stdio;

void Slices_1(){
	double[] array = [1, 20, 2, 30, 7, 11, 16];
	int i = 0;
	
	writeln(array[], " - Original Array");

	while (i < array.length){
		double[] slice = array[i..$];
		
		// Test for even number (modulus 2)
		if (slice[0] % 2 == 0){
			slice[0] /= 2;
		}
		++i;
	}

	writeln(array[], " - Modified Array");
	
}


// Slices exercise 2
// Iterate over an array and halve the value of all numbers greater than 10 in the array
// 		Start with a slice that gives access to all the elements of the array,
// 		and then shorten the slice from the beginning.

void Slices_2(){
	double[] array = [1, 20, 2, 30, 7, 11];
	double[] slice = array;

	writeln(array[], " - Original Array");
	
	// Test that length is not zero
	while (slice.length){
		if (slice[0] > 10) {
			slice[0] /= 2;
		}
		
		// Shorten the slice by removing the first element
		slice = slice[1..$];
	}

	writeln(array[], " - Modified Array");
	
}


