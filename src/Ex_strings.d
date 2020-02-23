import std.stdio;
import std.string;

// Capitalize and concatenate forename and surname input from the terminal
void Strings_2(){
	
	write("Enter First Name: ");
	string Name = capitalize(strip(readln()));
	
	
	write("Enter Last Name: ");
	Name = Name ~ ' ' ~ capitalize(strip(readln()));

	writeln(Name);
}

// Get a line of text from the terminal and print the text between the first and last "e" in the line.
void Strings_3(){
	
	writeln("Enter a iine of text:");
	string Text = readln();
	
	ptrdiff_t first_e = indexOf(Text,'e');
	if (first_e == -1) {
		
		writeln("There is no 'e' in the line.");
		
	} else {
	
		ptrdiff_t last_e = lastIndexOf(Text,'e');
		if (last_e == first_e) {
			
			writeln("There is only one 'e' in the line.");
		} else {
			
			writeln(Text[first_e .. last_e + 1]);

		}
	}

	
}