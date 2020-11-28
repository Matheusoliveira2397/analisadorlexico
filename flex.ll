%option nounput noinput

Op_multiply			[*]
Op_divide			[/]
Op_mod				[%]
OperAdd				[+]
Op_subtract			[-]
Op_negate		    [<]
Op_less         	[<=]
Op_lessequal		[>]
Op_greater      	[<=]
Op_greaterequal		[>=]
Op_equal            [==] 
Op_notequal		    [!=]
Op_not			    [!]
Op_assign	     	[=]
Op_and				[&&]
Op_or				[||]
LeftParen    		[(]
RightParen   		[)]
LeftBrace   		[[]
RightBrace  		[]]
Semicolon   		[;]
Comma   			[,]
Keyword_if	    	['if']
Keyword_else		['else']
Keyword_while		['while']
Keyword_print		['print']
Keyword_putc		['putc']
Identifier  		[_a-zA-Z][_azA-Z0-9]*
Integer				[0-9]+
Char 				'([^'\n]|\\n|\\\\)'
String			    '[^"\n]*'			

%%

{Op_multiply	}			printf("%s", " Op_multiply ");
vOp_divide}			    printf("%s", " Op_divide ");
{Op_mod	}			    printf("%s", " Op_mod ");
{OperAdd	}				printf("%s", " Op_add ");
{Op_subtract	}			printf("%s", " Op_subtract ");
{Op_negate}			    printf("%s", " Op_negate ");
{Op_less }                printf("%s", " Op_less ");
{Op_lessequal}	    	printf("%s", " Op_lessequal ");
{Op_greater } 			printf("%s", " Op_greater ");
{Op_greaterequal	}		printf("%s", " Op_greaterequal ");
{Op_equal 	}			printf("%s", " Op_equal ");
{Op_notequal	}		    printf("%s", " Op_notequal ");
{Op_not	}		        printf("%s", " Op_not ");
{Op_assign	}	        printf("%s", " Op_assign ");
{Op_and	}		        printf("%s", " Op_and ");
{Op_or	}			    printf("%s", " Op_or ");
{LeftParen	}	    	printf("%s", " LeftParen ");
{RightParen	}	    	printf("%s", " RightParen ");
{LeftBrace 	}		    printf("%s", " LeftBrace ");
{RightBrace	}	    	printf("%s", " RightBrace ");
{Semicolon	}	     	printf("%s", " Semicolon ");
{Comma		}        	printf("%s", " Comma ");
{Keyword_if	}			printf("%s", " Keyword_if ");
{Keyword_else}			printf("%s", " Keyword_else ");
{Keyword_while	}		printf("%s", " Keyword_while ");
{Keyword_print	}		printf("%s", " Keyword_print ");
{Keyword_putc}			printf("%s", " Keyword_putc ");
{Identifier   }	    	printf("%s", " Identifier ");
{Integer		}	    	printf("%s", " Integer ");
{Char	}				printf("%s", " IntegerChar ");
{String		}	    	printf("%s", " Strings ");


%%
int yywrap(void) {
	printf("\n");
	return 1;	
}

int main(int argc, char *argv[]) {
	while (yylex() != 0);
     
return 0;
}