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



// Print a geometric pattern of asterisks
// This almost does what I want, except that it puts two asterixes at the end from line 88 onwards,
void For_Loop_3(){
	
	// Define loop counters i, j and k
	// number of lines to print
	// number of asterixes required
	// number of blanks at the beginning of the line
	// number of asterixes to print on the line
	int i, j, k;
	int lines = 100;
	int asterixes_reqd = 8;
	int no_blanks = 0;
	int no_asterixes = 0;
	// Define the array to be printed (typically an 80 character terminal width)
	dchar[80] a = ' ';
	
	// Print lines
	for(i=1; i <= lines; i++){
		
		// Calculate the number of blanks at the beginning of the line, 
		// and the number of asterixes to print
		if(i > asterixes_reqd){
			no_blanks = (i - asterixes_reqd) % a.length;
		} else {
			no_asterixes = i;
		}
		
		// Create the line to be printed	

		// Put blanks at the beginning of the character array
		for(j = 0; j < no_blanks; j++){
			
			if(j > 0){
				a[j-1] = ' ';
			}
		}
		
		// Put asterixes after the blanks
		for(k = j; k < (j + no_asterixes - 1); k++){	
			int m = k % a.length;
			
				a[m] = '*';
		}
		
	writeln(a, " : ",i);	
	}
	
}



// Print a geometric pattern of asterisks
// The simpler version...
void For_Loop_3a(){
	int i, j;
	int lines = 40;
	int no_asterixes = 8;
	int no_blanks = 0;
	
	for(i = 1; i <= lines; i++){
		
		// Print spaces at the beginning of the line
		if(i > no_blanks + no_asterixes){
			no_blanks += 1;
			for(j = 0; j < no_blanks; j++){
				write(" ");
			}
		}
		
		// Print the required number of asterixes
		if(i > no_asterixes){
			for (j = 1; j <= no_asterixes; j++){
				write("*");
			} 
		} else {
			for(j = 1; j <= i - no_asterixes + 8; j++){
				write("*");
			}
		}
		
		writeln();


		
	}
	
	
}



// Print a geometric pattern of asterisks
// Yet another version...
void For_Loop_3b(){
	int i, j;
	int lines = 100;
	// Define the array of asterixes
	dchar[8] a = '*';
	// Define the array of spaces (typically an 80 character terminal width)
	dchar[72] b = ' ';
	dchar[] c = b ~ a;
	
//	string c = to!string(a ~ b);
//	writeln(c, " : ",i);	

	for(i = 1; i <= lines; i++){
		
			writeln(c[(c.length - (i % c.length))..$]);
		
	}
}


