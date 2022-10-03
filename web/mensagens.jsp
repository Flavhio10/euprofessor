<%@page import="Modelo.Usuario"%>
<%
    Usuario userMensage = (Usuario) session.getAttribute("usuario");
    if (session.getAttribute("usuario") != null) {
%>
<div id="topo">
    <%@include file="topo.jsp" %>
</div><%--fim do topo--%>
<div id="conteudo">  
    <div id="conteudo-esquerdo">
        <div id="menu-social">  
            <%                if (userMensage.getNivel() == Usuario.PROFESSOR) {
            %>
            <%@include file="menuProfessor.jsp" %>
            <%                }
            %>
            <%
                if (userMensage.getNivel() == Usuario.ALUNO) {
            %>
            <%@include file="menuAluno.jsp" %>
            <%                }
            %>
        </div><%--fim do menu-social--%>
    </div><%--fim do conteudo esquerdo--%>
    <div id="conteudo-meio">
        <div id="mensagens">
            <p>Assunto:</p>
            <input type="text" name="assunto">
            <p>Mensagem:</p>
            <textarea name="mensagem">
            
            </textarea>
            <p>Para:</p>
            <input type="search" name="participante">
            <input type="submit" value="Procurar"><br><br>
            <input type="submit" value="Enviar">
            <table border="1">
                <h3>Mensagens recebidas</h3>
                <tr>
                    <th>Data</th>
                    <th>Nome</th>
                    <th>Assunto</th>
                </tr>
                <tr>
                    <td>30/30/3000</td>
                    <td>Jonas</td>
                    <td><a href="#">Donec sagittis diam ut aliquam vehicula.</a></td>
                    <td><input type="button" value="Remover"></td>
                </tr>
                <tr>
                    <td>30/30/3000</td>
                    <td>Jonas</td>
                    <td><a href="#">Donec sagittis diam ut aliquam vehicula.</a></td>
                    <td><input type="button" value="Remover"></td>
                </tr>
                <tr>
                    <td>30/30/3000</td>
                    <td>Jonas</td>
                    <td><a href="#">Donec sagittis diam ut aliquam vehicula.</a></td>
                    <td><input type="button" value="Remover"></td>
                </tr> 

            </table>
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