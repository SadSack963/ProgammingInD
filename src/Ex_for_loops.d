import std.stdio;
import std.conv;

// Generate a printout containing  0,0 0,1 0,2 ...
//                                 1,0 1,1 1,2 ...
//                                 2,0 2,1 2,2 ...
//                                 etc.
void For_Loop_1(){
	
	// Here a "row" is used to represent the desired output on the terminal.
	for(int row = 0; row < 9; row++){
		for(int col = 0; col < 9; col++){
			
			write(row, ",", col, " ");
			
		}
		writeln();
	}
	writeln();
}


// Get the items in a array and print the array out:
// e.g. [0, 0][0, 1][0, 2]...
//      [1, 0][1, 1][1, 2]...
//      [2, 0][2, 1][2, 2]...
//      etc.
void For_Loop_2(){
	int[][] Array2D;
	
	for(int row = 0; row < 9; row++){
		for(int col = 0; col < 9; col++){
			
			Array2D ~= [row, col];
			
		}
	}	
	
	// This prints the array using a counter (i)... but is there a better way?
	// Here a "row" is a pair of items e.g. [5, 6], so we have to print 9 "rows" and then a new line.
	
	int i = 1;
	
	foreach (row; Array2D){
		
		write(row);
		if ((i % 9) == 0){
			writeln();
		}
		
		++i;
	}
}
