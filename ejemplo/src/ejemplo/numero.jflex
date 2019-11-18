/* archivo numero.jflex */
package ejemplo;


import java.util.ArrayList;
%%



%cup
%class Numero


%line
%column


%{
    public ArrayList<Token> tokens;
%}

%init{
    this.tokens = new ArrayList<>();
%init}


entero = \-?[0-9]+|\+?[0-9]+
real = {entero}\.[\d]+
cadena = [A-Za-z]+
archivo = {cadena}[\d]*\."loop"
verdadero = "verdadero"
falso = "falso"
booleano = {verdadero} | {falso}
tipovar = "entero"|"real"|"cadena"|"booleano"|"nulo"
static = "estatico"
mas = "+"
menos = "-"
por = "\*"
div = "\/"
modulo = "%"
exponenciacion = "^"
aritmeticos = {mas}|{menos}|{por}|{div}|{modulo}|{exponenciacion}
funcmath = "seno"|"coseno"|"tangente"|"logaritmo"|"raiz"
import = "importar"
igual = "\="
asignacion = {igual}
openpar = "("
closepar = ")"
mayorq = "\>"
menorq = "\<"
dospuntos = ":"
opencorch = "\["
closecorch = "\]"
comilla = "\""
igualq = {igual}{igual}
distintoq = \!{igual}
condiciones = {mayorq}|{menorq}|{igualq}|{distintoq}
puntoycoma = ";"
findelinea = \n|\r|\r\n|{puntoycoma}
ignorar = [\t\f]
inicom = {div}{div}|{div}{por}
fincom = {por}{div}
incremento = {mas}{mas}
decremento = {menos}{menos}
operadorlogico = ["AND"|"OR"]
class = "clase"
extends = "extiende"
props = "propiedades"
methods = "metodos"
include = "incluir"
tipoacceso = "publicas"|"privadas"|"protegidas"|"publicos"|"privados"|"protegidos"
if = "si"
then = "entonces"
return = "devolver"
else = "sino"
for = "desde"
while = "mientras"
do = "hacer"
print = "escribir"
cadenaentero = "cadenaAEntero"
cadenareal = "cadenaAReal"
cadenabol = "cadenaABoleano"
delete = "eliminar"
conversiones = {cadenaentero}|{cadenareal}|{cadenabol}
instance = "instanciar"


%%
{findelinea} {
    System.out.println("Encontre un Fin de linea: " + yytext());
    System.out.println("Encontrado en :" + yyline + "-" + yycolumn);
    tokens.add(new Token("fi",yytext()));
}




{entero} {
    
    System.out.println("Encontre un Entero: " + yytext());
    System.out.println("Encontrado en :" + yyline + "-" + yycolumn);
    tokens.add(new Token("entero",yytext()));
}

{real} {
    
    System.out.println("Encontre un Real: " + yytext());
    System.out.println("Encontrado en :" + yyline + "-" + yycolumn);
    tokens.add(new Token("real",yytext()));
}

{booleano} {
    
    System.out.println("Encontre un Booleano: " + yytext());
    System.out.println("Encontrado en :" + yyline + "-" + yycolumn);
    tokens.add(new Token("booleano",yytext()));
}

{static} {
    System.out.println("Encontre un Estatico: " + yytext());
    System.out.println("Encontrado en :" + yyline + "-" + yycolumn);
    tokens.add(new Token("static",yytext()));
}

{include} {
    System.out.println("Encontre una Inclucion: " + yytext());
    System.out.println("Encontrado en :" + yyline + "-" + yycolumn);
    tokens.add(new Token("include",yytext()));
}

{import} {
    System.out.println("Encontre una Importacion: " + yytext());
    System.out.println("Encontrado en :" + yyline + "-" + yycolumn);
    tokens.add(new Token("import",yytext()));
}

{archivo} {
    System.out.println("Encontre un Archivo: " + yytext());
    System.out.println("Encontrado en :" + yyline + "-" + yycolumn);
    tokens.add(new Token("file",yytext()));
}

{instance} {
    System.out.println("Encontre una Instanciacion: " + yytext());
    System.out.println("Encontrado en :" + yyline + "-" + yycolumn);
    tokens.add(new Token("instance",yytext()));
}

{delete} {
    System.out.println("Encontre una Eliminacion: " + yytext());
    System.out.println("Encontrado en :" + yyline + "-" + yycolumn);
    tokens.add(new Token("delete",yytext()));
}

{conversiones} {
    System.out.println("Encontre una Conversion: " + yytext());
    System.out.println("Encontrado en :" + yyline + "-" + yycolumn);
    tokens.add(new Token("funconversion",yytext()));
}

{funcmath} {
    System.out.println("Encontre una funcion matematica: " + yytext());
    System.out.println("Encontrado en :" + yyline + "-" + yycolumn);
    tokens.add(new Token("funcmath",yytext()));
}

{if} {
    System.out.println("Encontre un Si: " + yytext());
    System.out.println("Encontrado en :" + yyline + "-" + yycolumn);
    tokens.add(new Token("if",yytext()));
}

{then} {
    System.out.println("Encontre un Entonces: " + yytext());
    System.out.println("Encontrado en :" + yyline + "-" + yycolumn);
    tokens.add(new Token("then",yytext()));
}

{return} {
    System.out.println("Encontre un Retorno: " + yytext());
    System.out.println("Encontrado en :" + yyline + "-" + yycolumn);
    tokens.add(new Token("return",yytext()));
}

{else} {
    System.out.println("Encontre un Sino: " + yytext());
    System.out.println("Encontrado en :" + yyline + "-" + yycolumn);
    tokens.add(new Token("else",yytext()));
}

{for} {
    System.out.println("Encontre un Desde: " + yytext());
    System.out.println("Encontrado en :" + yyline + "-" + yycolumn);
    tokens.add(new Token("for",yytext()));
}

{while} {
System.out.println("Encontre un Mientras: " + yytext());
    System.out.println("Encontrado en :" + yyline + "-" + yycolumn);
    tokens.add(new Token("while",yytext()));
}

{do} {
System.out.println("Encontre un Hacer: " + yytext());
    System.out.println("Encontrado en :" + yyline + "-" + yycolumn);
    tokens.add(new Token("do",yytext()));
}

{print} {
    System.out.println("Encontre un Escribir: " + yytext());
    System.out.println("Encontrado en :" + yyline + "-" + yycolumn);
    tokens.add(new Token("print",yytext()));
}

{comilla} {
    System.out.println("Encontre una Comilla: " + yytext());
    System.out.println("Encontrado en :" + yyline + "-" + yycolumn);
    tokens.add(new Token("comilla",yytext()));
}

{tipovar} {
    System.out.println("Encontre un tipo de variable: " + yytext());
    System.out.println("Encontrado en :" + yyline + "-" + yycolumn);
    tokens.add(new Token("TipoVariable",yytext()));
}

{operadorlogico} {
    System.out.println("Encontre un operador logico: " + yytext());
    System.out.println("Encontrado en :" + yyline + "-" + yycolumn);
    tokens.add(new Token("operadorlogico",yytext()));
}

{class} {
    System.out.println("Encontre un declaracion de clase: " + yytext());
    System.out.println("Encontrado en :" + yyline + "-" + yycolumn);
    tokens.add(new Token("class",yytext()));
}

{extends} {
    System.out.println("Encontre un extends: " + yytext());
    System.out.println("Encontrado en :" + yyline + "-" + yycolumn);
    tokens.add(new Token("extends",yytext()));
}

{props} {
    System.out.println("Encontre una declaracion de propiedades: " + yytext());
    System.out.println("Encontrado en :" + yyline + "-" + yycolumn);
    tokens.add(new Token("props",yytext()));
}

{methods} {
    System.out.println("Encontre una declaracion de metodos: " + yytext());
    System.out.println("Encontrado en :" + yyline + "-" + yycolumn);
    tokens.add(new Token("methods",yytext()));
}

{tipoacceso} {
    System.out.println("Encontre un tipo de acceso: " + yytext());
    System.out.println("Encontrado en :" + yyline + "-" + yycolumn);
    tokens.add(new Token("tipoacceso",yytext()));
}

{cadena} {
    
    System.out.println("Encontre una Cadena: " + yytext());
    System.out.println("Encontrado en :" + yyline + "-" + yycolumn);
    tokens.add(new Token("cadena",yytext()));
}

{incremento} {
    System.out.println("Encontre un Incremento: " + yytext());
    System.out.println("Encontrado en :" + yyline + "-" + yycolumn);
    tokens.add(new Token("incremento",yytext()));
}

{decremento} {
    System.out.println("Encontre un Decremento: " + yytext());
    System.out.println("Encontrado en :" + yyline + "-" + yycolumn);
    tokens.add(new Token("decremento",yytext()));
}

{inicom} {
    System.out.println("Encontre Apertura de comentario: " + yytext());
    System.out.println("Encontrado en :" + yyline + "-" + yycolumn);
    tokens.add(new Token("opencom",yytext()));
}

{fincom} {
    System.out.println("Encontre un Cierre de comentario: " + yytext());
    System.out.println("Encontrado en :" + yyline + "-" + yycolumn);
    tokens.add(new Token("closecom",yytext()));
}

{aritmeticos} {
    System.out.println("Encontre un Simbolo aritmetico: " + yytext());
    System.out.println("Encontrado en :" + yyline + "-" + yycolumn);
    tokens.add(new Token("simaritmetico",yytext()));
}

{asignacion} {
    System.out.println("Encontre una Asignacion: " + yytext());
    System.out.println("Encontrado en :" + yyline + "-" + yycolumn);
    tokens.add(new Token("asignacion",yytext()));
}
{openpar} {
    System.out.println("Encontre una Abertura de parentesis: " + yytext());
    System.out.println("Encontrado en :" + yyline + "-" + yycolumn);
    tokens.add(new Token("openpar",yytext()));
    return new Symbol(sym.OPENPAR); 
}

{closepar} {
    System.out.println("Encontre un Cierre de parentesis: " + yytext());
    System.out.println("Encontrado en :" + yyline + "-" + yycolumn);
    tokens.add(new Token("closepar",yytext()));
    return new Symbol(sym.CLOSEPAR); 
}

{condiciones} {
    System.out.println("Encontre una Condicion: " + yytext());
    System.out.println("Encontrado en :" + yyline + "-" + yycolumn);
    tokens.add(new Token("condicion",yytext()));
}

{dospuntos} {
    System.out.println("Encontre Dos puntos: " + yytext());
    System.out.println("Encontrado en :" + yyline + "-" + yycolumn);
    tokens.add(new Token("dospuntos",yytext()));
}

{opencorch} {
    System.out.println("Encontre una apertura de corchetes: " + yytext());
    System.out.println("Encontrado en :" + yyline + "-" + yycolumn);
    tokens.add(new Token("opencorch",yytext()));
}

{closecorch} {
    System.out.println("Encontre un cierre de corchetes: " + yytext());
    System.out.println("Encontrado en :" + yyline + "-" + yycolumn);
    tokens.add(new Token("closecorch",yytext()));
}

{ignorar} { }

. { }
