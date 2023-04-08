all: calculator.tab.c lex.yy.c
	gcc lex.yy.c calculator.tab.c -lfl  -o calculator
lex.yy.c:
	flex calculator.l
calculator.tab.c:
	bison -d calculator.y
clean:
	rm calculator lex.yy.c calculator.tab.c