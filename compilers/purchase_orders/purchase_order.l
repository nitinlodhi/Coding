%{
%}


%%

^[a-zA-Z]+/[ \t]*::=[ \t]*SEQUENCE[ \t]*	{ printf("IE: %s\n", yytext);}
.   { /*ignore*/}
\n   { /*ignore*/}

%%

int
main(int argc, char* argv[]) {
    printf("reading file %s\n", argv[1]);
    FILE* fp = fopen(argv[1], "r");
    yyin = fp;
    yylex();
    return 0;

}
