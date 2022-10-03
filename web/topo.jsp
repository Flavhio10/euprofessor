<%@page import="Modelo.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Usuario userTop = (Usuario) session.getAttribute("usuario");
    if (userTop != null) {
%>
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
        <div id="logo">
            <a href="social.jsp"><h1>Eu professor</h1></a>
        </div><%--logo--%>
        <div id="pesquisa">
            <form id="form-pesquisa">
                <input type="search" id="campo-pesquisa">
                <input type="button" id="botao-pesquisa" value="Pesquisar">
            </form>
        </div>
        <div id="usuario-logado">     
            <%--<img src="img-logado.png" alt=""/>--%>
            <p>



            </p>
            <a href="sair">Sair</a>

        </div>
        <%    } else {
                response.sendRedirect("index.jsp?erro=100");
            }
        %>
