// This won't work as expected
// Fix the bugs.

/*
import std.stdio;

void main() {
	int[5] squares;
	
	writeln("Please enter 5 numbers");
	
	int i = 0;
	while (i <= 5){
		int number;
		write("Number ", i + 1, ": ");
		readf(" %s", &number);
		
		squares[i] = number * number;
		++i;
	}
	
	writeln("=== The squares of the numbers are ===");
	while (i <= squares.length){
		write(squares[i], " ");
		++i;
	}
	
	writeln();
}
*/

// One array for squares
import std.stdio;

void Arrays_3() {
	int[5] squares;
	
	writeln("Please enter 5 numbers");
	
	int i = 0;
	int number;
	while (i < 5){
		write("Number ", i + 1, ": ");
		writeln();
		readf(" %s", &number);
	
		squares[i] = number * number;
		++i;
	}
	
	i = 0;
	writeln("=== The squares of the numbers are ===");
	while (i < squares.length){
		write(squares[i], " ");
		++i;
	}
	
	writeln();
}

// Alternative version with two arrays for both numbers and squares
void Arrays_3_alt() {
	int[5] array_number;
	int[5] array_squares;
	
	writeln("Please enter another 5 numbers");
	
	int i = 0;
	while (i < 5){
		write("Number ", i + 1, ": ");
		writeln();
		readf(" %s", &array_number[i]);
		
		array_squares[i] = array_number[i] * array_number[i];
		++i;
	}
	
	writeln("=== The squares of these numbers are ===");
	i = 0;
	while (i < array_squares.length){
		write(array_number[i], "\t", array_squares[i], "\n");
		++i;
	}
	
	
	writeln();
}