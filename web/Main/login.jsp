<%-- 
    Document   : login
    Created on : May 29, 2020, 8:39:28 PM
    Author     : Ilyas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String dsp = "none";
    String error = request.getParameter("error");
    
    if(error != null){
        dsp = "block";
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    <body>
        <%@include file="../Main/header.jsp"%>
        <div class="contentlogin">
            <h2>Login</h2><br>
            <form action="../scripts/script-login.jsp" method="POST">
                <span class="badge badge-warning" style="display:<%=dsp%>;">Wrong Username/Password</span>
                <input class="form-control" type="text" name="uid" placeholder="Username" required>
                <input class="form-control" type="password" name="pass" placeholder="Password" required>
                <input class="btn btn-primary btn-block" type="submit" style="margin: 10px 0px;" value="Se Connecter">
                <div class="text-center"><p>You don't have an account, <a href='../Main/register.jsp'>Register</a></p></div>
            </form>
        </div>   
    </body>
</html>
