<%@page import="Modelo.Usuario"%>
<%
    if (session.getAttribute("usuario") != null) {
%>
<div id="menu">
    <ul>
        <%--<li><img src="img/perfil.png" alt=""/></li>--%>
        <li><a href="cadastro.jsp">Inscreva-se!</a></li>                            
    </ul>
</div><%--fim do menu--%>
<%    } else {
        response.sendRedirect("index.jsp?erro=1");
    }
%>