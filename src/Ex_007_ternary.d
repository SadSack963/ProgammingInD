import std.stdio;
import std.math;

// Use the ternary operator to print "gained" or "lost" depending on the sign of an integer.

void Ternary_1(){
	int number;
	string answer;
	
	write("Enter an integer: ");
	readf(" %s", number);	// Read a number from standard input
	
	answer = (number >= 0) ? "gained" : "lost";
	writeln("$", abs(number), " ", answer);	// Write the absolute value
	
}

