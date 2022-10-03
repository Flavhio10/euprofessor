<%
    Usuario userOrientand = (Usuario) session.getAttribute("usuario");
    if (session.getAttribute("usuario") != null && userOrientand.getNivel() == Usuario.PROFESSOR) {
%>
<div id="topo">
    <%@include file="topo.jsp" %>
</div><%--fim do topo--%>
<div id="conteudo">  
    <div id="conteudo-esquerdo">
        <div id="menu-social">  
            <%                if (userOrientand.getNivel() == Usuario.PROFESSOR) {
            %>
            <%@include file="menuProfessor.jsp" %>
            <%                }
            %>
            <%
                if (userOrientand.getNivel() == Usuario.ALUNO) {
            %>
            <%@include file="menuAluno.jsp" %>
            <%                }
            %>
        </div><%--fim do menu-social--%>
    </div><%--fim do conteudo esquerdo--%>
    <div id="conteudo-meio">

        <div id="lista-orientandos">
            <h3>Lista de orientandos</h3>
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