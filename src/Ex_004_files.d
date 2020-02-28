import std.stdio;
import std.string;
import std.file;

// Open a user specified file and print all non-empty line to another file.Ex_files
void Files_1(){
	
	write("Enter a filename: ");
	string inFilename = strip(readln());
	
	if (!exists(inFilename)){
		
		writeln("File does not exist!");
		
	} else {
		
		string outFilename = inFilename ~ ".txt";
		writeln("Copying contents to new '", outFilename, "'");

		File inFile = File(inFilename, "r"); // open file for reading from the beginning
		File outFile = File (outFilename, "w"); // create/open file for writing (delete contents if it already exists)
		
		while (!inFile.eof()){
				
			string Text = (strip(inFile.readln()));
			if (Text != ""){
				
				outFile.writeln(Text);
				
			}
		}
		writeln("Done");			
	}
	
}