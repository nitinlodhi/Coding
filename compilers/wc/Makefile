all: lex.yy.c
	gcc lex.yy.c -o wc -lfl
lex.yy.c:
	flex wc.l

clean:
	rm lex.yy.c wc