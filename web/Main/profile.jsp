<%-- 
    Document   : profile
    Created on : May 30, 2020, 12:06:17 AM
    Author     : Ilyas
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="com.base.DCM"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../scripts/checkidentity.jsp"%>
<%
    String username = "Profile";
    String sql = "select id, Username, pass, rank, phone from users where id = "+loginid;
    ResultSet rsprofile = DCM.Select_request(sql);
    if (rsprofile.next()){
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title><%=rsprofile.getString(2)%></title>
    </head>
    <body>
        <%@include file="../Main/header.jsp"%>
        <div class="content">
            <h2>Votre Compte</h2>
            <br>
            <div class="row">

                <img src="https://www.villadipiazzano.com/wp-content/plugins/all-in-one-seo-pack/images/default-user-image.png" width="150px" class="img-thumbnail">
                <div class="col-9">
                    <div class="input-group" style="margin: 10px">
                        <div class="input-group-prepend">
                          <div class="input-group-text" id="btnGroupAddon">Identifier</div>
                        </div>
                        <input type="text" class="form-control" placeholder="Identifier" value="<%=rsprofile.getString(1)%>" disabled="">
                    </div>
                    <div class="input-group" style="margin: 10px">
                        <div class="input-group-prepend">
                          <div class="input-group-text" id="btnGroupAddon">Username</div>
                        </div>
                        <input type="text" class="form-control" placeholder="Username" value="<%=rsprofile.getString(2)%>" disabled="">
                    </div>
                        <form action="../scripts/updatephone.jsp?id=<%=loginid%>" method="POST">
                    <div class="input-group" style="margin: 10px">
                        <div class="input-group-prepend">
                          <div class="input-group-text" id="btnGroupAddon">Phone</div>
                        </div>
                        <input type="text" class="form-control" placeholder="Phone" name="phone" value="<%=rsprofile.getString(5)%>">
                        <div class="input-group-append">
                          <button class="btn btn-outline-secondary" type="submit" onclick="if(check = confirm('Are you sure')){return true}">Update</button>
                        </div>
                    </div>
                    </form>
                </div>
            </div>
            <hr class="my-4">
            <h2>Vos Annonces</h2>
            <br>
            <div class="row">
            <%  ResultSet rs = DCM.Select_request("Select titre, description, u.username, u.phone, brand, model, price, image, a.id from annonce a join users u on a.autor = u.id where u.id = "+loginid);
                while(rs.next()){
            %>
            <div class="col-lg-4 col-md-6 mb-4">
                <div class="card h-100">
                    <img class="card-img-top carimg" src="<%=rs.getString(8)%>"  onclick="Swal.fire({
                                    imageUrl: '<%=rs.getString(8)%>',
                                    imageAlt: '<%=rs.getString(2)%>'
                                  })">
                  <div class="card-body">
                    <h4 class="card-title">
                      <a href="#"><%=rs.getString(1)%></a>
                    </h4>
                    <h5>$<%=rs.getString(7)%></h5>
                    <p class="card-text"><%=rs.getString(2)%></p>
                  </div>
                  <div class="card-footer">
                      <form action="../scripts/script-deleteannonce.jsp?id=<%=rs.getString(9)%>&from=profile" method="POST">
                        <button type="submit" class="btn btn-danger btn-sm" onclick="if(check = confirm('Are you sure wou wan to delete <%=rs.getString(9)%> ?')){return true}"><i class="fas fa-times"></i></button>
                        <small class="text-muted"><button type="button" class="btn btn-primary btn-sm" onclick="Swal.fire('<%=rs.getString(4)%>')"><i class="fas fa-phone"></i></button> &nbsp;<%=rs.getString(3)%></small>
                      </form>
                      
                  </div>
                </div>
            </div> 
            <%}%>
            </div>
        </div>
    </body>
</html>
<%}%>
