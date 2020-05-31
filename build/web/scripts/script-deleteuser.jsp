<%-- 
    Document   : script-deleteuser
    Created on : May 30, 2020, 12:39:54 AM
    Author     : Ilyas
--%>



<%@page import="java.io.IOException"%>
<%@page import="com.base.DCM"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../scripts/checkidentity.jsp"%>
<%
    try{ 
        String id=request.getParameter("id");
        String req="delete from Users where id="+id+"";    
        DCM.AMS_request(req);
        response.sendRedirect("../Main/admin.jsp");
    } catch(IOException e) {
        
    }
 
%>
