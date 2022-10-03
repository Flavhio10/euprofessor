<%@page import="Modelo.Usuario"%>
<%
    Usuario userAjuda = (Usuario) session.getAttribute("usuario");
    if (session.getAttribute("usuario") != null) {
%>
<div id="ajuda">
    <ul>
        <li><a href="#">Ajuda</a></li> 
    </ul>
</div>
<%
    } else {
        response.sendRedirect("index.jsp?erro=1");
    }
%>