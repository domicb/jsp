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
    int j = 0;
    String operacion = "";
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
            <input type="submit" name="una" value="Mostrar tabla"> 
            <input type="submit" name="todas" value="Todas las tablas">
        </form>
        <%
            if (request.getParameter("num1") != null && request.getParameter("num1")!="") {
                    try {//si eligen la tabla de un numero
                        numero = Integer.parseInt(request.getParameter("num1"));
                        out.print("<h3>Tabla de multiplicar del " + numero + "</h3>");

                        for (i = 1; i <= 10; i++) {
                            res = numero * i;
                            out.print(numero + " X " + i + " = " + res + "<br>");
                        }
                    } catch (NumberFormatException nfe) {
                        out.print("<strong>El número introducido debe ser un número entero entre: </strong><font color='red'>1 y 100 </font>");
                    }           
            } 
            else//si eligen todas las tablas
            {         
                out.print("\n<h3>Tablas de multiplicar </h3>");
                out.print("\n<table border='1'>");
                out.print("\n<tr>");
                int nCols=0;
                for (i = 1; i <= 10; i++) {
                    nCols++;

                    out.print("\n<td>");
                    out.print("Tabla del "+i+"<br>\n");
                        for (j = 1; j <= 10; j++) {
                            res = i * j;
                            out.print(i + " X " + j + " = " + res + "<br>\n");
                        }
                            
                    out.print("\n</td>"); 
                                        if(nCols==3 )
                    {
                        nCols=0;
                        out.print("\n</tr>\n<tr>");
                        //si ya han salido 3 columnas sacamos otra
                    }
                }
                
                out.print("\n</tr>");
                out.print("\n</table>");
            }
        %>
        <hr>
        <a href="index.jsp.html">Volver al menú</a>
    </center>   
</body>
</html>
