<%
    if (session.getAttribute("usuario") != null) {
%>
<div id="conteudo-direita">
    <%@include file="educadores.jsp" %>
    <%@include file="debates.jsp" %>
</div><%--fim do conteudo da direita--%>
<%
    } else {
        response.sendRedirect("index.jsp?erro=1");
    }
%>