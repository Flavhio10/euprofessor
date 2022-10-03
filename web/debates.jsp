<%@page import="Modelo.Usuario"%>
<%
    Usuario userDebat = (Usuario) session.getAttribute("usuario");
    if (session.getAttribute("usuario") != null) {
%>
<div id="debates-abertos">
    <h3>Debates em andamento</h3>
    <ul>
        <li>
            <form action="paginaDebate.jsp">
                <h4>Educação e tecnologia</h4>
                <p>Debate aberto até dia 10/10/2017</p>
                <input type="submit" value="Participar">
            </form>
        </li>
        <li>
            <form action="paginaDebate.jsp">
                <h4>Práticas educacionais</h4>
                <p>Debate aberto até dia 10/10/2017</p>
                <input type="submit" value="Participar">
            </form>
        </li>
        <li>
            <form action="paginaDebate.jsp">
                <h4>Novo professor</h4>
                <p>Debate encerrado dia 10/10/2017</p>
            </form>
        </li>
        <h5><a href="#">Ver todos...</a></h5>
    </ul>
</div>
<%
    } else {
        response.sendRedirect("index.jsp?erro=1");
    }
%>