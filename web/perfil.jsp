<%@page import="Modelo.Usuario"%>
<%
    Usuario userPerfil = (Usuario) session.getAttribute("usuario");
    if (session.getAttribute("usuario") != null) {
%>
<div id="topo">
    <%@include file="topo.jsp" %>
</div><%--fim do topo--%>
<div id="conteudo">  
    <div id="conteudo-esquerdo">
        <div id="menu">
            <%                if (userPerfil.getNivel() == Usuario.PROFESSOR) {
            %>
            <%@include file="menuProfessor.jsp" %>
            <%                }
            %>
            <%
                if (userPerfil.getNivel() == Usuario.ALUNO) {
            %>
            <%@include file="menuAluno.jsp" %>
            <%                }
            %>
        </div>
    </div><%--fim do conteudo esquerdo--%>
    <div id="conteudo-meio">
        <div id="edicao-perfil-professor">
            <form id="perfil-professor">
                <p>Primeiro nome:</p>
                <input type="text">
                <p>Último nome:</p>
                <input type="text">
                <p>Formação acadêmica:</p>
                <input type="text">
                <p>E-mail:</p>
                <input type="text">
                <p>Senha:</p>
                <input type="password"><br><br>
                <input type="button" value="Salvar">

            </form>
        </div>

    </div><%--fim do conteudo do meio--%>

    <div id="conteudo-direita">
        <%@include file="educadores.jsp" %>
    </div><%--fim do conteudo da direita--%>
</div><%--fim do conteudo--%>
<div id="rodape">
    <%@include file="rodape.jsp" %>
</div><%--fim do rodape--%>
<%    } else {
        response.sendRedirect("index.jsp?erro=1");
    }
%>