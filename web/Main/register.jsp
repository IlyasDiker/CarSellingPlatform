<%-- 
    Document   : register
    Created on : May 29, 2020, 8:39:44 PM
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
        <title>Register</title>
    </head>
    <body>
        <%@include file="../Main/header.jsp"%>
        <div class="contentlogin">
            <h2>Register</h2><br>
            <form action="../scripts/script-register.jsp" method="POST">
                <span class="badge badge-warning" style="display:<%=dsp%>;">Username Already Exist</span>
                <input class="form-control" type="text" name="uid" placeholder="Username" required>
                <input class="form-control" type="phone" name="phone" placeholder="Phone" required>
                <input class="form-control" type="password" name="pass" placeholder="Password" required>
                <input class="btn btn-primary btn-block" type="submit" style="margin: 10px 0px;" value="Create New Account">
                <div class="text-center"><p>You already have an account, <a href='../Main/login.jsp'>Login</a></p></div>
            </form>
        </div>
    </body>
</html>
