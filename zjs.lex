%{
	#include stdio.h
%}
int num = 0;
%%


%%
END                         { printf("END\n"); }
;                           { printf("END_STATEMENT\n"); } 
POINT                       { printf("POINT\n"); }
LINE                        { printf("LINE\n"); }
CIRCLE                      { printf("CIRCLE\n"); }
RECTANGLE                   { printf("RECTANGLE\n"); }
SET_COLOR                   { printf("SET_COLOR\n"); }
[0-9]+                      { printf("INT\n"); }
[0-9]+\.[0-9]+              { printf("FLOAT\n"); }
\n                          { num++; }
\t|\s   		    		{ ; } 
.                           { printf("ERROR: ON LINE %d\n",numlines); }
%%