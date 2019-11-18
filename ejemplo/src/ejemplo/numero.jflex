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
    
    tokens.add(new Token("fl",yytext()));
    
}




{entero} {

    tokens.add(new Token("entero",yytext()));
    
}

{real} {

    tokens.add(new Token("real",yytext()));
     
}

{booleano} {

    tokens.add(new Token("booleano",yytext()));
    
}

{static} {

    tokens.add(new Token("static",yytext()));
    
}

{include} {

    tokens.add(new Token("include",yytext()));
    
}

{import} {

    tokens.add(new Token("import",yytext()));
    
}

{archivo} {

    tokens.add(new Token("file",yytext()));
    
}

{instance} {

    tokens.add(new Token("instance",yytext()));
    
}

{delete} {

    tokens.add(new Token("delete",yytext()));
    
}

{conversiones} {

    tokens.add(new Token("funconversion",yytext()));
    
}

{funcmath} {

    tokens.add(new Token("funcmath",yytext()));
    
}

{if} {

    tokens.add(new Token("if",yytext()));
   
}

{then} {

    tokens.add(new Token("then",yytext()));
     
}

{return} {

    tokens.add(new Token("return",yytext()));
    
}

{else} {

    tokens.add(new Token("else",yytext()));
   
}

{for} {

    tokens.add(new Token("for",yytext()));
    
}

{while} {

    tokens.add(new Token("while",yytext()));
     
}

{do} {

    tokens.add(new Token("do",yytext()));
    
}

{print} {

    tokens.add(new Token("print",yytext()));
    
}

{comilla} {

    tokens.add(new Token("comilla",yytext()));
   
}

{tipovar} {

    tokens.add(new Token("TipoVariable",yytext()));
    
}

{operadorlogico} {

    tokens.add(new Token("operadorlogico",yytext()));
    
}

{class} {

    tokens.add(new Token("class",yytext()));
   
}

{extends} {

    tokens.add(new Token("extends",yytext()));
     
}

{props} {

    tokens.add(new Token("props",yytext()));
    
}

{methods} {

    tokens.add(new Token("methods",yytext()));
    
}

{tipoacceso} {

    tokens.add(new Token("tipoacceso",yytext()));
    
}

{cadena} {

    tokens.add(new Token("cadena",yytext()));
   
}

{incremento} {

    tokens.add(new Token("incremento",yytext()));
   
}

{decremento} {

    tokens.add(new Token("decremento",yytext()));
    
}

{inicom} {

    tokens.add(new Token("opencom",yytext()));
}

{fincom} {

    tokens.add(new Token("closecom",yytext()));
}

{aritmeticos} {

    tokens.add(new Token("simaritmetico",yytext()));
    
}

{asignacion} {

    tokens.add(new Token("asignacion",yytext()));
    
}
{openpar} {

    tokens.add(new Token("openpar",yytext()));
    
}

{closepar} {

    tokens.add(new Token("closepar",yytext()));
    
}

{condiciones} {

    tokens.add(new Token("condicion",yytext()));
    
}

{dospuntos} {

    tokens.add(new Token("dospuntos",yytext()));
    
}

{opencorch} {

    tokens.add(new Token("opencorch",yytext()));
    
}

{closecorch} {

    tokens.add(new Token("closecorch",yytext()));
   
}

{ignorar} { }

. { }
