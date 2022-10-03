<%@page import="Modelo.Usuario"%>
<%
    if (session.getAttribute("usuario") == null) {
%>
<form id="form-login" method="post" action="autentica">
    <p>E-mail:
        <input type="email" name="login">
    </p>
    <p>Senha:
        <input type="password" name="senha"><br><br>
        <input type="submit" value="Entrar"><br><br>
    </p>
</form> 
<%
    }
%>



