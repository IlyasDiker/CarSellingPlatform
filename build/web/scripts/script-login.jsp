<%-- 
    Document   : login
    Created on : May 29, 2020, 10:25:58 PM
    Author     : Ilyas
--%>

<%@page import="com.base.DCM"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
            String log_in =request.getParameter("uid");
            String password =request.getParameter("pass");
            Connection conn = DCM.getConnection();
            Statement stm = conn.createStatement();
            ResultSet rs = stm.executeQuery("SELECT ID, RANK from \"SOUTHERNAUTO\".\"USERS\" WHERE username='"+log_in+"' AND pass='"+password+"'");
            if(rs.next()){
                session.setAttribute("login", log_in);
                session.setAttribute("loginid", rs.getString(1));
                session.setAttribute("rank", rs.getString(2));
                response.sendRedirect("../Main/index.jsp");
            }else{
               RequestDispatcher dispatcher = request.getRequestDispatcher("../Main/login.jsp?error=1");
               dispatcher.include(request, response);
            }
%>