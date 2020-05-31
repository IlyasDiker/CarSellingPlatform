<%-- 
    Document   : updatephone
    Created on : May 31, 2020, 12:04:30 AM
    Author     : Ilyas
--%>

<%@page import="com.base.DCM"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../scripts/checkidentityadmin.jsp"%>
<%
    String id = request.getParameter("id");
    String phone = request.getParameter("phone");
    
    String req = "update users set phone = '"+phone+"' where id = "+id;
    
    boolean done = DCM.AMS_request(req);
    if (done){
        response.sendRedirect("../Main/profile.jsp");
    } else {
        response.sendRedirect("../Main/profile.jsp?error=1");
    }
    
%>
