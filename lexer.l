/*
The Lex structure
definition ＆rules ＆user code

definition
%%//separate by this
rules
%%
user code

*/
%{
	int num_line=1;
%}
Keywords int|char|float|double|return|if|else|while|break|for|print
Number [0-9]+
Identifier [a-zA-Z_][a-zA-Z0-9_]*
Operators \+|\-|\=|\*|\/|\!=|\<|\>|\<=|\>=
Special [{|}|(|)|;|,]
Char [.|\t]
Error [~] 
%%
\n {num_line++;
	printf("Line %d\n",num_line);
}
{Char} 
{Keywords} {
	printf("	<Keyword>		%s\n",yytext);
}

{Number} {
	printf("	<Number>		%s\n",yytext );
}
{Identifier} {
	printf("	<Identifier>		%s\n",yytext);
}
{Operators} {
	printf("	<Operator>		%s\n",yytext);
}
{Special} {
	printf("	<Special Symbol>	%s\n",yytext);
}
{Error} {
	printf("	<Error>			%s\n",yytext);
}
%%
main()
{
	printf("Line 1\n");
	yylex();
	return 0;
}
