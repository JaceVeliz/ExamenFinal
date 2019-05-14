/*----------------------1ra. Area: Codigo de Usuario ------------------------------*/
//-----------> Paquetes e importaciones
package olc1.examenfinal_201700343;
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
%class AnalizadorL
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
numero = [0-9]+

//-----> Estados


%%
/*----------------------3ra. Area: Reglas lexicas ---------------------------------*/

//------> Simboloss

<YYINITIAL> "("         {
                            return new Symbol(Simbolos.para, yycolumn, yyline, yytext());
                         }

<YYINITIAL> ")"         {return new Symbol(Simbolos.parc, yycolumn, yyline, yytext());
                        }



<YYINITIAL> ","         {return new Symbol(Simbolos.coma, yycolumn, yyline, yytext());
                        }




                        
//------> Simboloss reservados


//------> Simboloss ER



<YYINITIAL> {numero}            {
                                return new Symbol(Simbolos.numero, yycolumn, yyline, yytext());
                                }


//-----> Espacios

[\t\r\n\f\s]+                  { /* Espacios en blanco se ignoran */ }


//-------> Errores lexicos
.                         {System.out.println("Error lexico " + yytext() + " Linea" + yyline+ " Columna" + yycolumn);
                                ErrorLe datoserror=new ErrorLe(yytext(),"Error Lexico", yycolumn, yyline, "Simbolos desconocido");
                                ObjError.add(datoserror);  }

