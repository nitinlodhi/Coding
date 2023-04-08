%{
#include <stdio.h>
%}

/* declare tokens */
%token NUMBER
%token ADD SUB MUL DIV ABS
%token EOL

%%
calclist: /* nothing */
    | calclist expression EOL       { printf("= %d\n", $2); }
    ;

expression: expression ADD factor   { $$ = $1 + $3; }
    | expression SUB factor         { $$ = $1 - $3; }
    | factor
    ;

factor: factor MUL term             { $$ = $1 * $3; }
    | factor DIV term               { $$ = $1 / $3; }
    | term
    ;

term: NUMBER
    | ABS term  { $$ = $2 > 0? $2 : -$2; }
    ;
%%

int main()
{
    yyparse();
}

int
yyerror(const char *s) {
    fprintf(stderr, "error: %s\n", s);
}