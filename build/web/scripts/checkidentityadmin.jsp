<%-- 
    Document   : checkidentity
    Created on : May 30, 2020, 10:56:02 PM
    Author     : Ilyas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String login = "";
    String loginid = "";
    if (session.getAttribute("rank").toString().equals("admin")){
        login = session.getAttribute("login").toString();
        loginid = session.getAttribute("loginid").toString();
    } else {
        response.sendRedirect("../Main/login.jsp");
    }
%>