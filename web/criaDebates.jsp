<%
    Usuario userCriDeba = (Usuario) session.getAttribute("usuario");
    if (session.getAttribute("usuario") != null && userCriDeba.getNivel() == Usuario.PROFESSOR) {
%>
<div id="topo">
    <%@include file="topo.jsp" %>
</div><%--fim do topo--%>
<div id="conteudo">  
    <div id="conteudo-esquerdo">
        <div id="menu-social">  
            <%                if (userCriDeba.getNivel() == Usuario.PROFESSOR) {
            %>
            <%@include file="menuProfessor.jsp" %>
            <%                }
            %>
            <%
                if (userCriDeba.getNivel() == Usuario.ALUNO) {
            %>
            <%@include file="menuAluno.jsp" %>
            <%                }
            %>
        </div><%--fim do menu-social--%>
    </div><%--fim do conteudo esquerdo--%>
    <div id="conteudo-meio">

        <h2>Criação de debates</h2>
        <form id="form-participantes-debate">
            <p>
                <label for="assunto">Assunto:</label>
            </p>
            <input type="text" name="assunto">

            <p>
                <label for="assunto">Descrição:</label>
            </p>
            <textarea name="descricao">
                    
            </textarea>

            <h3>Participantes</h3>
            <input type="radio" name="participantes" value="professor" checked> Professor<br>
            <input type="radio" name="participantes" value="aluno"> Alunos<br>
            <input type="radio" name="participantes" value="todos"> Todos
            <h3>Data inicial:</h3>
            <input type="date">
            <h3>Data final</h3>
            <input type="date"><br><br>
            <input type="submit" value="Criar">
        </form>

    </div><%--fim do conteudo do meio--%>
    <%@include file="conteudoDireita.jsp" %><%--conteudo da direita--%>
</div><%--fim do conteudo--%>
<div id="rodape">
    <%@include file="rodape.jsp" %>
</div><%--fim do rodape--%>
<%    } else {
        response.sendRedirect("index.jsp?erro=1");
    }
%>