<%-- 
    Document   : calculadora
    Created on : 04-mar-2016, 16:30:30
    Author     : 2DAW
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    float numero = 0;
    float numero2 = 0;
    float res = 0;
    String operador = "";
    String salida = "";
    Boolean recurso = false;

    /*podemos leer los datos del request a una variable*/
    if (request.getParameter("num1") != null && request.getParameter("num2") != null) {
        // Comprobamos primero si corresponde con el formato que esperamos
        try {
            numero = Integer.parseInt(request.getParameter("num1"));
            numero2 = Integer.parseInt(request.getParameter("num2"));

            //recogemos el operador y comparamos para cada elección
            operador = request.getParameter("ope");

            if (operador.equals("suma")) {
                res = numero + numero2;
                salida = " + ";
            }
            if (operador.equals("resta")) {
                res = numero - numero2;
                salida = " - ";
            }
            if (operador.equals("div")) {
                if (numero2 > 0) {
                    res = numero / numero2;
                    salida = " / ";
                } else {
                    out.print("<font color='red'>El número debe ser mayor que 0 para dividirlo</font><br>");
                }
            }
            if (operador.equals("mul")) {
                res = numero * numero2;
                salida = " * ";
            }
            out.print("<b>Resultado de la operación</b>");
            out.print("<br/>");
            out.print(numero + salida + numero2 + " = " + res);
        } catch (NumberFormatException nfe) {//si no corresponde con las variables lo mostramos
            out.print("<strong>Los datos introducidos </strong><font color='red'>no son números enteros</font><br>");
        }
    }


%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Calculadora</title>
    </head>
    <body>
    <center> <h1>Introduzca los números a operar</h1><br><br>
        <form name="" method="POST" action="">
            <label>Número 1:</label>
            <input type="text" name="num1"></input><br><br>
            <label>Operación:</label>
            <SELECT NAME="ope" > 
                <OPTION VALUE="suma">Suma</OPTION> 
                <OPTION VALUE="resta">Resta</OPTION> 
                <OPTION VALUE="mul">Multiplicación</OPTION> 
                <OPTION VALUE="div">Divisición</OPTION> 
            </SELECT> <br><br>
            <label>Número 2: </label>
            <input type="text" name="num2"></input><br><br>
            <input type="submit" name="enviar" value="Realizar Operación">
        </form>
        <hr>
        <a href="index.jsp.html"> Volver al menú</a>
    </center>   
</body>
</html>
