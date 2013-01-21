%{
/*
 * expression parser example
 *
 * (c) 2009 Prof Dr Andreas Mueller
 */
%}
%union {
	double	value;
}
%token <value>NUMBER
%%
exprline:	expr '\n'
	|	expr ';'
	
	;
expr:		term
	|	expr '+' term
	|	expr '-' term
	;
term:		term '*' factor
	|	term '/' factor
	|	factor
	;
factor:		'(' expr ')'
	|	NUMBER
	;

%%

