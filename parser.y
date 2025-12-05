%{
#include <stdio.h>
#include <stdlib.h>

void yyerror(const char *s);
int yylex(void);
%}

%union {
    double dval;
}

%token <dval> NUMBER
%token PLUS MINUS MULTIPLY DIVIDE LPAREN RPAREN EOL

%type <dval> expr term factor

%%

calculation:
    | calculation line
    ;

line:
    EOL
    | expr EOL { printf("Result: %f\n", $1); }
    ;

expr:
    term
    | expr PLUS term { $$ = $1 + $3; }
    | expr MINUS term { $$ = $1 - $3; }
    ;

term:
    factor
    | term MULTIPLY factor { $$ = $1 * $3; }
    | term DIVIDE factor { 
        if ($3 == 0) {
            yyerror("Division by zero");
            $$ = 0;
        } else {
            $$ = $1 / $3; 
        }
    }
    ;

factor:
    NUMBER
    | LPAREN expr RPAREN { $$ = $2; }
    | MINUS factor { $$ = -$2; }
    ;

%%

void yyerror(const char *s) {
    fprintf(stderr, "Error: %s\n", s);
}

int main(void) {
    printf("Enter arithmetic expressions (e.g., 3 + 4 * 5):\n");
    yyparse();
    return 0;
}
