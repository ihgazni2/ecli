%{
%}


%%

"+"        {printf("plus\n");}
"-"        {printf("minus\n");}
"*"        {printf("mul\n");}
"/"        {printf("div\n");}
"|"        {printf("or\n");}
[0-9]+     {printf("num %s\n",yytext);}
"\n"       {printf("nl \n");}
[ \t]      {}
.          {printf("other \n");}

%%

int main(int argc,char**argv) {
    if(argc > 1) {
    }
    yylex();
    return(0);  
} 
