<%-- 
    Document   : script-addannounce
    Created on : May 30, 2020, 3:51:08 PM
    Author     : Ilyas
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.io.InputStream"%>
<%@page import="com.base.DCM"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% 

    String title = request.getParameter("title");
    String desc = request.getParameter("desc");
    String autor = session.getAttribute("loginid").toString();
    String brand = request.getParameter("brand");
    String blob = request.getParameter("blob");
    String model = request.getParameter("model");
    String price = request.getParameter("price");
   // InputStream inputStream = null;
   // Part filePart = request.getPart("blob");

    String sql = ("INSERT INTO \"SOUTHERNAUTO\".\"ANNONCE\" (ID, TITRE, DESCRIPTION, AUTOR, IMAGE, BRAND, MODEL, PRICE) "+
            "VALUES((SELECT max(ID)+1 from \"SOUTHERNAUTO\".\"ANNONCE\"),'"+title+"','"+desc+"',"+autor+",'"+blob+"','"+brand+"','"+model+"',"+price+")");
    System.out.println(sql);
    //PreparedStatement statement = DCM.prepareStatement(sql);
    //inputStream = filePart.getInputStream();
    //statement.setBlob(1, inputStream);
    
    boolean rs = DCM.AMS_request(sql);
    if(rs==true){
        response.sendRedirect("../Main/index.jsp?sucess=1");
    }else{
        response.sendRedirect("../Main/AjouterAnnonce.jsp?error=1");
    }
%>