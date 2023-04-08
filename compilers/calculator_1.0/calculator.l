%{
/*
enum yytokentype {
    NUMBER = 258,
    ADD,
    SUB,
    MUL,
    DIV,
    ABS,
    EOL
};
int yylval;
*/
#include "calculator.tab.h"
%}

%%
"+"     { /*printf("ADD\n");*/ return ADD; }
"-"     { /*printf("SUB\n");*/ return SUB; }
"*"     { /*printf("MUL\n");*/ return MUL; }
"/"     { /*printf("DIV\n");*/ return DIV; }
"|"     { /*printf("ABS\n");*/ return ABS; }
[0-9]+  { /*printf("NUMBER %s\n", yytext);*/ yylval = atoi(yytext) ; return NUMBER; }
\n      { /*printf("NEWLINE\n");*/ return EOL; }
[ \t]   { /*ignore whitespaces*/ }
.       { printf("Invalid character %c\n", *yytext); }
%%

#if 0
int
main(int argc, char** argv) {
    int tok;
    while (tok = yylex()) {
        printf("%d", tok);
        if (tok == NUMBER)
            printf(" = %d\n", yylval);
        else
            printf("\n");
    }
}
#endif