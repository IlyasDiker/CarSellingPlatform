<%-- 
    Document   : register script
    Created on : May 29, 2020, 10:26:04 PM
    Author     : Ilyas
--%>

<%@page import="com.base.DCM"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% 

    String login = request.getParameter("uid");
    String adresse = request.getParameter("phone");
    String password = request.getParameter("pass");

    String sql = ("INSERT INTO \"SOUTHERNAUTO\".\"USERS\" (ID, USERNAME, PASS, PHONE) VALUES((SELECT max(ID)+1 from \"SOUTHERNAUTO\".\"USERS\"),'"+login+"','"+password+"','"+adresse+"')");
    System.out.println(sql);

    boolean rs = DCM.AMS_request(sql);
    if(rs==true){
        response.sendRedirect("../Main/login.jsp");
    }else{
        RequestDispatcher dispatcher = request.getRequestDispatcher("../Main/register.jsp?error=1");
        dispatcher.include(request, response);
    }
%>