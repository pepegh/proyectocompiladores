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


entero = [0-9]+
real = {entero}\.[\d]
cadena = [A-Za-z]+
verdadero = "verdadero"
falso = "falso"
booleano = {verdadero} | {falso}
tipovar = "entero"|"real"|"cadena"|"booleano"
mas = "+"
menos = "-"
por = "\*"
div = "\/"
modulo = "%"
exponenciacion = "^"
aritmeticos = {mas}|{menos}|{por}|{div}|{modulo}|{exponenciacion}
igual = "\="
asignacion = {igual}
openpar = "("
closepar = ")"
mayorq = "\>"
menorq = "\<"
dospuntos = ":"
opencorch = "\["
closecorch = "\]"
igualq = {igual}{igual}
distintoq = \!{igual}
condiciones = {mayorq}|{menorq}|{igualq}|{distintoq}
puntoycoma = ";"
findelinea = \n|\r|\r\n|{puntoycoma}
ignorar = {findelinea} | [\t\f]
inicom = {div}{div}|{div}{por}
fincom = {por}{div}
incremento = {mas}{mas}
decremento = {menos}{menos}
operadorlogico = ["AND"|"OR"]
class = "clase"
extends = "extiende"
props = "propiedades"
methods = "metodos"
tipoacceso = "publicas"|"privadas"|"protegidas"|"publicos"|"privados"|"protegidos"

%%

{ignorar} { }

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
}

{closepar} {
    System.out.println("Encontre un Cierre de parentesis: " + yytext());
    System.out.println("Encontrado en :" + yyline + "-" + yycolumn);
    tokens.add(new Token("closepar",yytext()));
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
