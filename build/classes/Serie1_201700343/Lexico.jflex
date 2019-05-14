/*----------------------1ra. Area: Codigo de Usuario ------------------------------*/
//-----------> Paquetes e importaciones
package Serie1_201700343;
import java_cup.runtime.*;
import java.util.LinkedList;
/*----------------------2da. Area: Opciones y Declaraciones -----------------------*/
%%
%{
//-----> Codigo de usuario en sintaxis java
public static LinkedList<ErrorLe> ObjError=new LinkedList<ErrorLe>();


%}
//----------->Directivas
%public
%class AnalizadorL2
%cupsym Simbolos
%cup
%char
%column
%full
%ignorecase
%8bit
%line
%unicode

//-------> Expresiones Regulares
numero = [0-9]+([\.][0-9]*)?
cadena = \"[^\"]*\"
character=\'[^\']\'

//-----> Estados


%%
/*----------------------3ra. Area: Reglas lexicas ---------------------------------*/

//------> Simbolos

<YYINITIAL> "+"         {
                         return new Symbol(Simbolos.mas, yycolumn, yyline, yytext());
                         }

<YYINITIAL> "-"         {return new Symbol(Simbolos.menos, yycolumn, yyline, yytext());
                        }

<YYINITIAL> "*"         {return new Symbol(Simbolos.por, yycolumn, yyline, yytext());
                         }

<YYINITIAL> "/"         {return new Symbol(Simbolos.div, yycolumn, yyline, yytext());
                        }


<YYINITIAL> ";"         {return new Symbol(Simbolos.puntoyc, yycolumn, yyline, yytext());
                        }


<YYINITIAL> ","         {return new Symbol(Simbolos.coma, yycolumn, yyline, yytext());
                        }




                        
//------> Simbolos reservados

<YYINITIAL> "true"         {return new Symbol(Simbolos.truee, yycolumn, yyline, yytext());
                        }


<YYINITIAL> "false"         {return new Symbol(Simbolos.falsee, yycolumn, yyline, yytext());
                        }

//------> Simbolos ER


<YYINITIAL> {cadena}            {
                                return new Symbol(Simbolos.cadena, yycolumn, yyline, yytext());
                                }


<YYINITIAL> {numero}            {
                                return new Symbol(Simbolos.numero, yycolumn, yyline, yytext());
                                }
<YYINITIAL> {character}            {
                                return new Symbol(Simbolos.chara, yycolumn, yyline, yytext());
                                }


//-----> Espacios

[\t\r\n\f\s]+                  { /* Espacios en blanco se ignoran */ }


//-------> Errores lexicos
.                         {System.out.println("Error lexico " + yytext() + " Linea" + yyline+ " Columna" + yycolumn);
                                ErrorLe datoserror=new ErrorLe(yytext(),"Error Lexico", yycolumn, yyline, "Simbolo desconocido");
                                ObjError.add(datoserror);  }

