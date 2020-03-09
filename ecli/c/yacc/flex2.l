%{
    enum {
        LOOKUP=0,
        VERB,
        ADJ,
        ADV,
        NOUN,
        PREP,
        PRON,
        CONJ    
    };
    int state;
    int add_word(int type,char * word);
    int lookup_word(char * word);
%}


%%

\n         {state = LOOKUP;}
^verb      {state = VERB;printf("match:%s setstate:verb",yytext);}
^adj       {state = ADJ;printf("match:%s setstate:adj",yytext);}
^adv       {state = ADV;printf("match:%s setstate:adv",yytext);}
^noun      {state = NOUN;printf("match:%s setstate:noun",yytext);}
^prep      {state = PREP;printf("match:%s setstate:prep",yytext);}
^pron      {state = PRON;printf("match:%s setstate:pron",yytext);}
^conj      {state = CONJ;printf("match:%s setstate:conj",yytext);}

[a-zA-Z]+  {
    if(state !=LOOKUP) {
        add_word(state,yytext);
        printf("add state:%d match:%s\n",state,yytext);
    } else {
        printf("lookup state:%d match:%s\n",state,yytext);
        switch(lookup_word(yytext)){
            case VERB: {
                printf("verb %s\n",yytext);
                break;
            };
            case ADJ: {
                printf("adj %s\n",yytext);
                break;
            };
            case ADV: {
                printf("adv %s\n",yytext);
                break;
            };
            case NOUN: {
                printf("noun %s\n",yytext);
                break;
            };
            case PREP: {
                printf("prep %s\n",yytext);  
                break;
            };
            case PRON: {
                printf("pron %s\n",yytext);
                break;
            };
            case CONJ: {
                printf("conj %s\n",yytext);
                break;
            };
            default: {
                printf("unknown %s\n",yytext);
                break;
            }
        }
    }
};   

%%

struct word {
    char* word_name;
    int word_type;
    struct word *next;
};

struct word * word_list;

int add_word(int type,char *word) {
    struct word * wp;
    if(lookup_word(word) != LOOKUP) {
        printf("already defined %s\n",word);
        return(0);
    }
    wp = (struct word *) malloc(sizeof(struct word));
    wp->next = word_list;
    wp->word_name = (char *) malloc(strlen(word)+1);
    strcpy(wp->word_name,word);
    wp->word_type = type;
    word_list = wp;
    return(1);
}

int lookup_word(char * word) {
    struct word * wp = word_list;
    for(;wp;wp=wp->next) {
        if(strcmp(wp->word_name,word) == 0) {
            return(wp->word_type);
        } 
    }
    return(LOOKUP);
}

int main(int argc,char ** argv) {
    yylex();
}


