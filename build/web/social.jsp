<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="Persistencia.PostagemDAO"%>
<%@page import="Modelo.Postagem"%>
<%
    Usuario novoUser = (Usuario) session.getAttribute("usuario");
    Postagem novaPostagem = new Postagem();
    if (novoUser != null) {
%>
<div id="topo">
    <%@include file="topo.jsp" %>
</div><%--fim do topo--%>
<div id="conteudo">         
    <div id="conteudo-esquerdo">
        <div id="menu-social">  
            <%                if (novoUser.getNivel() == Usuario.PROFESSOR) {
            %>
            <%@include file="menuProfessor.jsp" %>

            <%                }
            %>
            <%
                if (novoUser.getNivel() == Usuario.ALUNO) {
            %>
            <%@include file="menuAluno.jsp" %>
            <%                }
            %>
            <%
                if (novoUser.getNivel() == Usuario.VISITANTE) {
            %>
            <%@include file="menuVisitante.jsp" %>
            <%                }
            %>

        </div><%--fim do menu-social--%>
    </div><%--fim do conteudo esquerdo--%>
    <div id="conteudo-meio">
        <div id="postagem-rapida">
            <div id="caixa-postagem">
                <form method="post" action="cadPostagem">
                    <input type="textarea" id="campo-postagem" name="texto" placeholder="Compartilhe conhecimento...">
                    <input type="submit" id="botao-postagem" value="Postar">
                </form>
            </div>
        </div>
        <div id="postagens">
            <ul>
                <%
                    List<Postagem> listaPostagens = new ArrayList<>();
                    listaPostagens.addAll(new PostagemDAO().listarTodos());
                    for (int i = 0; i < listaPostagens.size(); i++) {
                %>
                <li>
                    <%out.print(listaPostagens.get(i));%>
                </li>
                <%
                    }
                %>
            </ul>
        </div><%--fim conteudo postagem--%>
    </div><%--fim do conteudo do meio--%>                
    <%@include file="conteudoDireita.jsp" %><%--conteudo da direita--%>
</div><%--fim do conteudo--%>
<div id="rodape">
    <%@include file="rodape.jsp" %>
</div><%--fim do rodape--%>
<%    
} else {
        response.sendRedirect("index.jsp?erro=2");
    }
%>

