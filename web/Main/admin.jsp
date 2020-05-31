<%-- 
    Document   : admin
    Created on : May 29, 2020, 9:59:26 PM
    Author     : Ilyas
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="com.base.DCM"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="../Main/header.jsp"%>
    <%@include file="../scripts/checkidentityadmin.jsp"%>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Panel</title>
        <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.21/css/dataTables.bootstrap4.min.css">
        <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.21/js/jquery.dataTables.min.js"></script>
        <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.21/js/dataTables.bootstrap4.min.js"></script>
        
        <script>
            $(document).ready( function () {
                $('#table_id').DataTable();
                $('#table_id2').DataTable();
            } );
        </script>
    </head>
    <body>
        <div class="content">
            <h2><i class="fas fa-users-cog"></i> Users Management</h2><br>
            
            <table id="table_id" class="table table-hover">
                <thead class="thead-dark">
                    <tr>
                        <th>Id</th>
                        <th>Username</th>
                        <th>Password</th>
                        <th>Phone</th>
                        <th>Rank</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    <%  ResultSet rs = DCM.Select_request("Select * from \"SOUTHERNAUTO\".\"USERS\" ");
                        while(rs.next()){%>
                    <tr>
                        <td><%=rs.getString(1)%></td>
                        <td><%=rs.getString(2)%></td>
                        <td><%=rs.getString(3)%></td>
                        <td><%=rs.getString(5)%></td>
                        <td><%=rs.getString(4)%></td>
                        <td><!--a href="Edituser.jsp?ref=<%=rs.getString(1)%>&article=<%=rs.getString(2)%>&price=<%=rs.getString(3)%>&quantity=<%=rs.getString(4)%>" class="badge badge-primary">🖊 Modifier</a-->
                            <a  OnClick="if(check = confirm('Are you sure')){window.location='../scripts/script-deleteuser.jsp?id=<%=rs.getString(1)%>'}"  class="badge badge-primary text-white">🗑 Suprimer</a></td>
                    </tr>
                      <%}%>
                </tbody>
            </table>
                <hr class="my-4">
            <h2><i class="fas fa-car"></i> Announce Management</h2><br>
            <table id="table_id2" class="table table-hover">
                <thead class="thead-dark">
                    <tr>
                        <th>Id</th>
                        <th>Titre</th>
                        <th>Description</th>
                        <th>Autor</th>
                        <th>Brand</th>
                        <th>Model</th>
                        <th>Price</th>
                        <th>Picture</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
            <%  ResultSet rs2 = DCM.Select_request("Select * from \"SOUTHERNAUTO\".\"ANNONCE\" ");
                if (rs2 != null){
            while(rs2.next()){%>
                    <tr>
                        <td><%=rs2.getString(1)%></td>
                        <td><%=rs2.getString(2)%></td>
                        <td style="overflow: hidden;"><%=rs2.getString(3)%></td>
                        <td><%=rs2.getString(4)%></td>
                        <td><%=rs2.getString(5)%></td>
                        <td><%=rs2.getString(6)%></td>
                        <td><%=rs2.getString(7)%></td>
                        <td><img src="<%=rs2.getString(8)%>" onclick="Swal.fire({
                                    imageUrl: '<%=rs2.getString(8)%>',
                                    imageAlt: '<%=rs2.getString(2)%>'
                                  })" style="width: 50px;" /></td>
                        <td><!--a href="Edituser.jsp?ref=<%=rs2.getString(1)%>&article=<%=rs2.getString(2)%>&price=<%=rs2.getString(3)%>&quantity=<%=rs2.getString(4)%>" class="badge badge-primary">🖊 Modifier</a-->
                            <a  OnClick="if(check = confirm('Are you sure')){window.location='../scripts/script-deleteannonce.jsp?id=<%=rs2.getString(1)%>'}"  class="badge badge-primary text-white">🗑 Suprimer</a></td>
                    </tr>
            <%}}%>
                </tbody>
            </table>
            
        </div>
        
    </body>
</html>
