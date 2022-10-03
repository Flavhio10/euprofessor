<%@page import="Modelo.Usuario"%>
<%
    Usuario userPagDebat = (Usuario) session.getAttribute("usuario");
    if (session.getAttribute("usuario") != null && userPagDebat.getNivel() == Usuario.PROFESSOR) {
%>
<div id="topo">
    <%@include file="topo.jsp" %>
</div><%--fim do topo--%>
<div id="conteudo">  
    <div id="conteudo-esquerdo">
        <%            if (userPagDebat.getNivel() == Usuario.PROFESSOR) {
        %>
        <%@include file="menuProfessor.jsp" %>
        <%            }
        %>
        <%
            if (userPagDebat.getNivel() == Usuario.ALUNO) {
        %>
        <%@include file="menuAluno.jsp" %>
        <%            }
        %>

    </div><%--fim do conteudo esquerdo--%>
    <div id="conteudo-meio">

        <div id="sala-debate">
            <h2>Sala de debates</h2>
            <h3>Tema: Educação e tecnologia</h3>
            <p>Descrição:</p>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
                Aenean vehicula laoreet ornare. Donec in mi ac nulla maximus 
                feugiat. Suspendisse potenti. Morbi porttitor, metus vitae molestie varius.
            </p><br>
            <p>Moderador: Cazuza</p><br>
            <div id="caixa-postagem">
                <input type="textarea" id="campo-postagem" placeholder="Compartilhe conhecimento...">
                <input type="button" id="botao-postagem" value="Postar">
            </div><br> <br>
            <input type="submit" value="Sair da sala">
        </div>

    </div><%--fim do conteudo do meio--%>
    <%@include file="participantesDebate.jsp" %><%--conteudo da direita--%>
</div><%--fim do conteudo--%>
<div id="rodape">
    <%@include file="rodape.jsp" %>
</div><%--fim do rodape--%>
<%    } else {
        response.sendRedirect("index.jsp?erro=1");
    }
%>
