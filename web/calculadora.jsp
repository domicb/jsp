<%-- 
    Document   : calculadora
    Created on : 04-mar-2016, 16:30:30
    Author     : 2DAW
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String numero = "dos";
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Calculadora</title>
    </head>
    <body>
        <h1>Introduzca los números a operar</h1>
        <form name="" method="POST" action="">
        <label>Número 1:</label>
            <input type="text" name="num1"></input>
            <label>Operación:</label>
            <SELECT NAME="ope" MULTIPLE> 
                <OPTION VALUE="suma">Rojo</OPTION> 
                <OPTION VALUE="resta">Verde</OPTION> 
                <OPTION VALUE="mul">Azul</OPTION> 
                <OPTION VALUE="div">Azul</OPTION> 
             </SELECT> 
            <label>Número 2:</label>
            <input type="text" name="num2"></input>
            <input type="submit" name="enviar" value="si">
        </form>
    </body>
</html>
