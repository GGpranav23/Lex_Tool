Lex code is written in a file called lexer.l which tokenizes the input C program, identifying and printing
different tokens along with their classifications (such as data type, control keyword,
identifier, operator, etc.), while ignoring comments and whitespace.

So to execute the program follow these steps:

Pre-requisite: 1. Linux OS 
	       2. install lex tool via terminal with the help of following commands: 
			a. sudo apt update 
			b. sudo apt install flex 
			C. flex --version (To verify the installation)
			

Step-1: Write the lex code in a text editor(Any) and save it with “.l” Extension. For example
save this program file as “lexer.l”

Step-2: Give an input C program. For example, save this sample C program with the file
name as “input.txt” in the directory where the “lexer.l” is present.

Step-3: Compile your lexer program: Use the flex command to compile your lexer program: $ flex lexer.l

Step-4: Compile the generated C file: Compile the generated C file using a C compiler (e.g.,
gcc): $ gcc lex.yy.c -o lexer -lfl  

Step-5: Execute the lexer: Run the compiled lexer program: $ ./lexer
