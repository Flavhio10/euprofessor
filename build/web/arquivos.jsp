<%
    Usuario userArqu = (Usuario) session.getAttribute("usuario");
    if (session.getAttribute("usuario") != null && userArqu.getNivel() == Usuario.PROFESSOR) {
%>
<div id="topo">
    <%@include file="topo.jsp" %>
</div><%--fim do topo--%>
<div id="conteudo">  
    <div id="conteudo-esquerdo">
        <div id="menu-social">  
            <%
                if (userArqu.getNivel() == Usuario.PROFESSOR) {
            %>
                <%@include file="menuProfessor.jsp" %>
            <% }
            %> 
            <%
                if (userArqu.getNivel() == Usuario.ALUNO) {
            %>
                <%@include file="menuAluno.jsp" %>
            <% }
            %> 
            
        </div><%--fim do menu-social--%>
    </div><%--fim do conteudo esquerdo--%>
    <div id="conteudo-meio">

        <div id="arquivos_usuarios">
            <table border="1">
                <h3>Lista de arquivos</h3>

                <label>Procurar</label>
                <input type="search" >
                <input type="button" value="Anexar">

                <tr>
                    <th>Data</th>
                    <th>Nome</th>
                </tr>
                <tr>
                    <td>10/10/1000</td>
                    <td width="260">atividades.pdf</td>
                    <td><input type="button" value="Baixar"></td>
                    <td><input type="button" value="Remover"></td>
                </tr>
                <tr>
                    <td>10/10/1000</td>
                    <td>atividades.pdf</td>
                    <td><input type="button" value="Baixar"></td>
                    <td><input type="button" value="Remover"></td>
                </tr>
                <tr>
                    <td>10/10/1000</td>
                    <td>atividades.pdf</td>
                    <td><input type="button" value="Baixar"></td>
                    <td><input type="button" value="Remover"></td>
                </tr>
                <tr>
                    <td>10/10/1000</td>
                    <td>atividades.pdf</td>
                    <td><input type="button" value="Baixar"></td>
                    <td><input type="button" value="Remover"></td>
                </tr>
                <tr>
                    <td>10/10/1000</td>
                    <td>atividades.pdf</td>
                    <td><input type="button" value="Baixar"></td>
                    <td><input type="button" value="Remover"></td>
                </tr>
                <tr>
                    <td>10/10/1000</td>
                    <td>atividades.pdf</td>
                    <td><input type="button" value="Baixar"></td>
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