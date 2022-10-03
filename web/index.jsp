<%-- 
    Document   : index
    Created on : 11/09/2016, 12:54:24
    Author     : Flávio
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Eu professor</title>
        <style>
            @import "style.css";
        </style>
    </head>
    <body>
        <div id="conteudo-principal">
            <div id="conteudo">  

                <div id="telaSplash">
                    <h1>Eu professor</h1>
                    <%
                        if (session.getAttribute("usuario") == null) {
                    %>
                    <%@include file="login.jsp" %>
                    <br><br>
                    <%                    } else {
                    %>  

                    <%
                        }
                    %>
                    <p id="desenvolvedores">Flávio & Carlos Ramiro</p>                    
                    <p><a href="cadastro.jsp">Inscrever-se!</a></p>
                </div>
            </div><%--fim do conteudo--%>
        </div><%--fim do conteudo principal--%>
    </body>
</html>
