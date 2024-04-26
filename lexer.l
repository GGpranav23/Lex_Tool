%{
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
%}
%%
"int"|"char" | "float" | "double" | "void" { printf ("DATA TYPE: %s\n",
yytext); }
"if"|"else"|"for"|"while" | "do"|"switch" | "case" | "break" | "continue" {
printf("CONTROL: %s\n", yytext); }
"return" { printf("RETURN: %s\n", yytext); }
"(" { printf("OPENING PARENTHESIS\n"); }
")" { printf("CLOSING PARENTHESIS\n"); }
"{" { printf("OPENING BRACE\n"); }
"}" { printf("CLOSING BRACE\n"); }
";" { printf("SEMICOLON\n"); }
[0-9]+ { printf("NUMBER: %s\n", yytext); }
[a-zA-Z_] [a-zA-Z0-9_]* { printf("IDENTIFIER: %s\n", yytext); }
"==" | "!="|"<="|">=" | "<"|">" { printf("RELATIONAL OPERATOR: %s\n", yytext);
}
"=" { printf("ASSIGNMENT OPERATOR\n"); }

"+"|"-"|"*"|"/" { printf("ARITHMETIC OPERATOR: %s\n", yytext); }
"," { printf("COMMA\n"); }
"//"(.)* { /* Ignore single line comments */ }
"/\*"(.*1.) *"\*/" { /* Ignore multi-line comments */ }
\n { /* Ignore newlines */ }[\t] { /* Ignore whitespace and tabs */ }
{ printf("INVALID: %s\n", yytext); }
%%
int main(int argc, char* argv[]) {
FILE file = fopen("input.txt", "r");
if (!file) {
fprintf(stderr, "Error opening file.\n");
return 1;
}
yyin file; yylex();
fclose(file);
}
return 0;
