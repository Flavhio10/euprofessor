<%@page import="Modelo.Usuario"%>
<%
    Usuario userMenuPro = (Usuario) session.getAttribute("usuario");
    if (session.getAttribute("usuario") != null && userMenuPro.getNivel() == Usuario.PROFESSOR) {
%>
<div id="menu">
    <ul>
        <%--<li><img src="img/perfil.png" alt=""/></li>--%>
        <li><a href="perfil.jsp">Perfil</a></li>                            
    </ul>
</div><%--fim do menu--%>
<div id="atividades">
    <h3>Atividades</h3>
    <ul>
        <li><a href="criaDebates.jsp">Criar debates</a></li>
        <li><a href="mensagens.jsp">Mensagens</a></li>
        <li><a href="arquivos.jsp">Meus arquivos</a></li>
        <li><a href="orientandos.jsp">Orientandos</a></li>
    </ul>
</div>
<%    } else {
        response.sendRedirect("index.jsp?erro=1");
    }
%>