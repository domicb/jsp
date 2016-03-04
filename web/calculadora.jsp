<%-- 
    Document   : calculadora
    Created on : 04-mar-2016, 16:30:30
    Author     : 2DAW
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    int numero = 0;
    int numero2 = 0;
    String operador = "";
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Calculadora</title>
    </head>
    <body>
    <center> <h1>Introduzca los números a operar</h1><br><br>
        <div id="Resultado"></div>
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
            <label>Número 2:</label>
            <input type="text" name="num2"></input><br><br>
            <input type="submit" name="enviar" value="Realizar Operación">
        </form>
    </center>   
    </body>
</html>
