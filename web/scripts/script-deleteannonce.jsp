<%-- 
    Document   : script-deleteannonce
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
        String from=request.getParameter("from");
        String req="delete from ANNONCE where id="+id+"";    
        System.out.println(req);
        DCM.AMS_request(req);
        if (from.equals("profile")){
            response.sendRedirect("../Main/profile.jsp");
        } else {
            response.sendRedirect("../Main/admin.jsp");
        }
    } catch(IOException e) {
        
    }
 
%>
