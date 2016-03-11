<%-- 
    Document   : tabla
    Created on : 07-mar-2016, 16:29:16
    Author     : 2DAW
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    int numero = 0;
    int i = 0;
    int res = 0;
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tabla de multiplicar</title>
    </head>
    <body>
    <center> <h1>Tablas de multiplicar</h1><br><br>
        <form name="" method="POST" action="">
            <label>Número:</label>
            <input type="text" name="num1"></input> 
            <input type="submit" name="una" value="Mostrar tabla"> <input type="submit" name="todas" value="Mostrar todas">
        </form>
        <%
            if (request.getParameter("num1") != null) {
                try {
                  
                    numero = Integer.parseInt(request.getParameter("num1"));
                    out.print("<h3>Tabla de multiplicar del " + numero + "</h3>");
                    
                    for (i = 1; i < 10; i++) {
                        res = numero * i;
                        out.print(numero + " X " + i + " = " + res + "<br>");
                    }
                } catch (NumberFormatException nfe) {
                    out.print("<strong>El número introducido debe ser un número entero entre: </strong><font color='red'>1 y 100 </font>");
                }
            }
        %>
        <hr>
        <a href="index.html">Volver al menú</a>
    </center>   
</body>
</html>
