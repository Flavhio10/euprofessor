<%@page import="Modelo.Usuario"%>
<%
    if (session.getAttribute("usuario") != null) {
%>
<div id="menu">
    <ul>
        <%--<img src="img/perfil.png" />--%>
        <li><a href="perfil.jsp">Perfil</a></li>

    </ul>
</div><%--fim do menu--%>
<div id="atividades">
    <ul>
        <h3>Atividades</h3>
        <li><a href="mensagens.jsp">Mensagens</a></li>
        <li><a href="orientadores.jsp">Orientadores</a></li>
    </ul>
</div>
<%    } else {
        response.sendRedirect("index.jsp?erro=1");
    }
%>