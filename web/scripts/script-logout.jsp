<%-- 
    Document   : script-logout
    Created on : May 29, 2020, 11:31:25 PM
    Author     : Ilyas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    session.invalidate();
    response.sendRedirect("../Main/index.jsp");
%>
