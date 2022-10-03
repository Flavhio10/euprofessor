<%@page import="Modelo.Usuario"%>
<%
    Usuario userParticipantes = (Usuario) session.getAttribute("usuario");
    if (session.getAttribute("usuario") != null && userParticipantes.getNivel() == Usuario.PROFESSOR) {
%>
<div id="participantes-debate">
    <h3>Participantes</h3>
    <ul>

        <li>
            <%--<img src="img/perfil.png" alt=""/>--%>
            <p>Carlos Alberto</p>
        </li>
        <li>
            <%--<img src="img/perfil.png" alt=""/>--%>
            <p>Carlos Alberto</p>
        </li>
        <li>
            <%--<img src="img/perfil.png" alt=""/>--%>
            <p>Carlos Alberto</p>
        </li>
        <li>
            <%--<img src="img/perfil.png" alt=""/>--%>
            <p>Carlos Alberto</p>
        </li>

    </ul>
</div>
<%    } else {
        response.sendRedirect("index.jsp?erro=1");
    }
%>