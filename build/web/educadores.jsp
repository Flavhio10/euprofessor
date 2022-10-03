<%@page import="Modelo.Usuario"%>
<%
    Usuario userEduc = (Usuario) session.getAttribute("usuario");
    if (session.getAttribute("usuario") != null) {
%>
<div id="educadores-destaque">
    <ul>
        <h3>Educadores</h3>
        <li>                                
            <%--<img src="../Imagens/businessman.png" alt="" />--%>
            <p>Raul Seixas / Filosofia</p>
            <button type="button">Solicitar orientação</button>
        </li>
        <li>
            <%--<img src="img/businessman.png" alt="" />--%>
            <p>Raul Seixas / Filosofia</p>
            <button type="button">Solicitar orientação</button>
        </li>
        <li>
            <%--<img src="img/businessman.png" alt="" />--%>
            <p>Raul Seixas / Filosofia</p>
            <button type="button">Solicitar orientação</button>
        </li>
        <h5><a href="#">Ver todos...</a></h5>
    </ul>
</div><%--educadores em destaque--%>
<%
    } else {
        response.sendRedirect("index.jsp?erro=1");
    }
%>