/*------Codigo de Usuario -------*/
package Analizadores;
import java_cup.runtime.*;
import java.util.LinkedList;
import javax.swing.table.DefaultTableModel;
 

/*------Opciones y Declaraciones -------*/


%%
%{
  public static LinkedList<TError> TablaEL = new LinkedList<TError> ();
  
  public static Vista principals = new Vista();
%}

%public
%class Analizador_Lexico
%cupsym Simbolos
%cup
%char
%column
%full
%ignorecase
%line
%unicode


L=[a-zA-Z]+
D=[0-9]+
espacio=[ \t|\r|\n]+
Correo = {L}[@]{L}[.]{L}[.]{L}
Decimal={D}[.]{D}
Enlace = [w]{3}[.][\w]*[.]([\w]* | [/|.|&])*
//Identificador = {L}{L}({L}|{espacio})*

%%
/*------ Reglas Lexicas -------*/

{espacio} {/*Ignore*/}

<YYINITIAL> "INI_HTML" {
                 DefaultTableModel tokens = (DefaultTableModel) principals.tbtokens.getModel();
                 tokens.addRow(new Object[] {"Palabra Reservada",yytext(),yyline,yycolumn});
                 return new Symbol(Simbolos.Inicio_Doc_html, yycolumn, yyline, yytext());}
<YYINITIAL> "FIN_HTML" {
                 DefaultTableModel tokens = (DefaultTableModel) principals.tbtokens.getModel();
                 tokens.addRow(new Object[] {"Palabra Reservada",yytext(),yyline,yycolumn});
                 return new Symbol(Simbolos.Fin_Doc_html, yycolumn, yyline, yytext());}
<YYINITIAL> "ENCABEZADO_INI" {
                 DefaultTableModel tokens = (DefaultTableModel) principals.tbtokens.getModel();
                 tokens.addRow(new Object[] {"Palabra Reservada",yytext(),yyline,yycolumn});
                 return new Symbol(Simbolos.Inicio_Encabezado, yycolumn, yyline, yytext());}

<YYINITIAL> "TIT" {
                 DefaultTableModel tokens = (DefaultTableModel) principals.tbtokens.getModel();
                 tokens.addRow(new Object[] {"Palabra Reservada",yytext(),yyline,yycolumn});
                 return new Symbol(Simbolos.Titulo, yycolumn, yyline, yytext());}

<YYINITIAL> "BORDE" {
                 DefaultTableModel tokens = (DefaultTableModel) principals.tbtokens.getModel();
                 tokens.addRow(new Object[] {"Palabra Reservada",yytext(),yyline,yycolumn});
                 return new Symbol(Simbolos.Borde, yycolumn, yyline, yytext());}

<YYINITIAL> "NEGRITA" {
                 DefaultTableModel tokens = (DefaultTableModel) principals.tbtokens.getModel();
                 tokens.addRow(new Object[] {"Palabra Reservada",yytext(),yyline,yycolumn});
                 return new Symbol(Simbolos.Negrita, yycolumn, yyline, yytext());}

<YYINITIAL> "IMPRIMIR" {
                 DefaultTableModel tokens = (DefaultTableModel) principals.tbtokens.getModel();
                 tokens.addRow(new Object[] {"Palabra Reservada",yytext(),yyline,yycolumn});
                 return new Symbol(Simbolos.Imprimir, yycolumn, yyline, yytext());}

<YYINITIAL> "ENCABEZADO_FIN" {
                 DefaultTableModel tokens = (DefaultTableModel) principals.tbtokens.getModel();
                 tokens.addRow(new Object[] {"Palabra Reservada",yytext(),yyline,yycolumn});
                 return new Symbol(Simbolos.Fin_Encabezado, yycolumn, yyline, yytext());}

<YYINITIAL> "CUERPO_INI" {
                DefaultTableModel tokens = (DefaultTableModel) principals.tbtokens.getModel();
                 tokens.addRow(new Object[] {"Palabra Reservada",yytext(),yyline,yycolumn});  
                 return new Symbol(Simbolos.Inicio_Cuerpo, yycolumn, yyline, yytext());}

<YYINITIAL> "CUERPO_FIN" {
                DefaultTableModel tokens = (DefaultTableModel) principals.tbtokens.getModel();
                 tokens.addRow(new Object[] {"Palabra Reservada",yytext(),yyline,yycolumn});  
                 return new Symbol(Simbolos.Fin_Cuerpo, yycolumn, yyline, yytext());}

<YYINITIAL> "TABLA_IN" {
                DefaultTableModel tokens = (DefaultTableModel) principals.tbtokens.getModel();
                 tokens.addRow(new Object[] {"Palabra Reservada",yytext(),yyline,yycolumn});  
                 return new Symbol(Simbolos.Inicio_Tabla, yycolumn, yyline, yytext());}

<YYINITIAL> "TABLA_FIN" {
                DefaultTableModel tokens = (DefaultTableModel) principals.tbtokens.getModel();
                 tokens.addRow(new Object[] {"Palabra Reservada",yytext(),yyline,yycolumn});  
                 return new Symbol(Simbolos.Fin_Tabla, yycolumn, yyline, yytext());}

<YYINITIAL> "LISTA_IN" {
                DefaultTableModel tokens = (DefaultTableModel) principals.tbtokens.getModel();
                 tokens.addRow(new Object[] {"Palabra Reservada",yytext(),yyline,yycolumn});  
                 return new Symbol(Simbolos.Inicio_Lista, yycolumn, yyline, yytext());}

<YYINITIAL> "LISTA_FIN" {
                DefaultTableModel tokens = (DefaultTableModel) principals.tbtokens.getModel();
                 tokens.addRow(new Object[] {"Palabra Reservada",yytext(),yyline,yycolumn});  
                 return new Symbol(Simbolos.Fin_Lista, yycolumn, yyline, yytext());}
<YYINITIAL> "COLUMNA" {
                DefaultTableModel tokens = (DefaultTableModel) principals.tbtokens.getModel();
                 tokens.addRow(new Object[] {"Palabra Reservada",yytext(),yyline,yycolumn});  
                 return new Symbol(Simbolos.Columna, yycolumn, yyline, yytext());}

<YYINITIAL> FILA {
                DefaultTableModel tokens = (DefaultTableModel) principals.tbtokens.getModel();
                 tokens.addRow(new Object[] {"Palabra Reservada",yytext(),yyline,yycolumn});  
                 return new Symbol(Simbolos.Inicio_Fila, yycolumn, yyline, yytext());}
<YYINITIAL> ALTURA {
                DefaultTableModel tokens = (DefaultTableModel) principals.tbtokens.getModel();
                 tokens.addRow(new Object[] {"Palabra Reservada",yytext(),yyline,yycolumn});  
                 return new Symbol(Simbolos.Altura, yycolumn, yyline, yytext());}
<YYINITIAL> ANCHO {
                DefaultTableModel tokens = (DefaultTableModel) principals.tbtokens.getModel();
                 tokens.addRow(new Object[] {"Palabra Reservada",yytext(),yyline,yycolumn});  
                 return new Symbol(Simbolos.Ancho, yycolumn, yyline, yytext());}

<YYINITIAL> FILA_FIN {
                DefaultTableModel tokens = (DefaultTableModel) principals.tbtokens.getModel();
                 tokens.addRow(new Object[] {"Palabra Reservada",yytext(),yyline,yycolumn});  
                 return new Symbol(Simbolos.Fin_Fila, yycolumn, yyline, yytext());}

<YYINITIAL> "IMAGEN_IN" {
                DefaultTableModel tokens = (DefaultTableModel) principals.tbtokens.getModel();
                 tokens.addRow(new Object[] {"Palabra Reservada",yytext(),yyline,yycolumn});  
                 return new Symbol(Simbolos.Inicio_Imagen, yycolumn, yyline, yytext());}

<YYINITIAL> "IMAGEN_FIN" {
                DefaultTableModel tokens = (DefaultTableModel) principals.tbtokens.getModel();
                 tokens.addRow(new Object[] {"Palabra Reservada",yytext(),yyline,yycolumn});  
                 return new Symbol(Simbolos.Fin_Imagen, yycolumn, yyline, yytext());}
<YYINITIAL> "NOMBRE_R" {
                DefaultTableModel tokens = (DefaultTableModel) principals.tbtokens.getModel();
                 tokens.addRow(new Object[] {"Identificador",yytext(),yyline,yycolumn});  
                 return new Symbol(Simbolos.Nombre, yycolumn, yyline, yytext());}
<YYINITIAL> "ENLACE_R" {
                DefaultTableModel tokens = (DefaultTableModel) principals.tbtokens.getModel();
                 tokens.addRow(new Object[] {"Identificador",yytext(),yyline,yycolumn});  
                 return new Symbol(Simbolos.EnlaceR, yycolumn, yyline, yytext());}

<YYINITIAL> {L} {
                DefaultTableModel tokens = (DefaultTableModel) principals.tbtokens.getModel();
                 tokens.addRow(new Object[] {"Identificador",yytext(),yyline,yycolumn});  
                 return new Symbol(Simbolos.Identificador, yycolumn, yyline, yytext());}

<YYINITIAL> {Enlace} {
                DefaultTableModel tokens = (DefaultTableModel) principals.tbtokens.getModel();
                 tokens.addRow(new Object[] {"Enlace",yytext(),yyline,yycolumn});  
                 return new Symbol(Simbolos.Enlace, yycolumn, yyline, yytext());}

<YYINITIAL> (\") {
                DefaultTableModel tokens = (DefaultTableModel) principals.tbtokens.getModel();
                 tokens.addRow(new Object[] {"Comillas",yytext(),yyline,yycolumn});
                 return new Symbol(Simbolos.Comillas, yycolumn, yyline, yytext());}

<YYINITIAL> "(" {
                DefaultTableModel tokens = (DefaultTableModel) principals.tbtokens.getModel();
                 tokens.addRow(new Object[] {"Parentesis Apertura",yytext(),yyline,yycolumn});
                 return new Symbol(Simbolos.Parentesis_Aper, yycolumn, yyline, yytext());}

<YYINITIAL> ")" {
                DefaultTableModel tokens = (DefaultTableModel) principals.tbtokens.getModel();
                 tokens.addRow(new Object[] {"Parentesis Cierre",yytext(),yyline,yycolumn});
                 return new Symbol(Simbolos.Parentesis_Cierre, yycolumn, yyline, yytext());}

<YYINITIAL> "=" {
                DefaultTableModel tokens = (DefaultTableModel) principals.tbtokens.getModel();
                 tokens.addRow(new Object[] {"Igual",yytext(),yyline,yycolumn});
                 return new Symbol(Simbolos.Igual, yycolumn, yyline, yytext());}

<YYINITIAL> "*" {
                DefaultTableModel tokens = (DefaultTableModel) principals.tbtokens.getModel();
                 tokens.addRow(new Object[] {"Multiplicacion",yytext(),yyline,yycolumn});
                 return new Symbol(Simbolos.Signo_multiplicacion, yycolumn, yyline, yytext());}

<YYINITIAL> "+" {
                DefaultTableModel tokens = (DefaultTableModel) principals.tbtokens.getModel();
                 tokens.addRow(new Object[] {"Signo suma",yytext(),yyline,yycolumn});
                 return new Symbol(Simbolos.Signo_Suma, yycolumn, yyline, yytext());}

<YYINITIAL> "-" {
                DefaultTableModel tokens = (DefaultTableModel) principals.tbtokens.getModel();
                 tokens.addRow(new Object[] {"Signo Resta",yytext(),yyline,yycolumn});
                 return new Symbol(Simbolos.Signo_resta, yycolumn, yyline, yytext());}

<YYINITIAL> ";" {
                DefaultTableModel tokens = (DefaultTableModel) principals.tbtokens.getModel();
                 tokens.addRow(new Object[] {"Punto y coma",yytext(),yyline,yycolumn});
                 return new Symbol(Simbolos.Punto_coma, yycolumn, yyline, yytext());}
                 
<YYINITIAL> "\," {
                DefaultTableModel tokens = (DefaultTableModel) principals.tbtokens.getModel();
                 tokens.addRow(new Object[] {"Separador",yytext(),yyline,yycolumn});
                 return new Symbol(Simbolos.Separador, yycolumn, yyline, yytext());}

<YYINITIAL> ":" {
                DefaultTableModel tokens = (DefaultTableModel) principals.tbtokens.getModel();
                 tokens.addRow(new Object[] {"Dos puntos",yytext(),yyline,yycolumn});
                 return new Symbol(Simbolos.Dos_puntos, yycolumn, yyline, yytext());}

<YYINITIAL> {D} {
                DefaultTableModel tokens = (DefaultTableModel) principals.tbtokens.getModel();
                 tokens.addRow(new Object[] {"Numero",yytext(),yyline,yycolumn});
                 return new Symbol(Simbolos.Numeros, yycolumn, yyline, yytext());}

<YYINITIAL> {Correo} {
                DefaultTableModel tokens = (DefaultTableModel) principals.tbtokens.getModel();
                 tokens.addRow(new Object[] {"Correo",yytext(),yyline,yycolumn});
                 return new Symbol(Simbolos.Correo, yycolumn, yyline, yytext());}

<YYINITIAL> {Decimal} {
                DefaultTableModel tokens = (DefaultTableModel) principals.tbtokens.getModel();
                 tokens.addRow(new Object[] {"Decimal",yytext(),yyline,yycolumn});
                 return new Symbol(Simbolos.Decimal, yycolumn, yyline, yytext());}

.          {System.out.println("Error Lexico "+yytext()+ "Linea "+yyline+" Columna" + yycolumn );
           DefaultTableModel tokens = (DefaultTableModel) principals.tbtokens.getModel();
           tokens.addRow(new Object[] {"ErrorLexico",yytext(),yyline,yycolumn});
           TError datos = new TError(yytext(),yyline,yycolumn, "Error Lexico", "Simbolo no existe en el lenguaje");
           TablaEL.add(datos);
           }

