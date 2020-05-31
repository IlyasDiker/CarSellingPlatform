<%-- 
    Document   : carslist
    Created on : May 30, 2020, 9:18:51 PM
    Author     : Ilyas
--%>

<%@page import="com.base.DCM"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%  String reqq = "Select titre, description, u.username, u.phone, brand, model, price, image, a.id from annonce a join users u on a.autor = u.id where 1=1 ";

    String titre = "";
    String brand = "";
    String minPrice = "";
    String maxPrice = "";   
    
    if (request.getParameter("title")!=null){
        titre = request.getParameter("title").toString();
       if(!titre.isEmpty()){
           reqq = reqq+"and lower(titre) = lower('"+titre+"')";
       }
        
    }
    if (request.getParameter("brand")!=null){
        brand = request.getParameter("brand").toString();
        if(!brand.isEmpty()){
           reqq = reqq+" and lower(brand) = lower('"+brand+"')";
       }
        
    }
    if (request.getParameter("minprice")!=null){
        minPrice = request.getParameter("minprice").toString();
        if(!minPrice.isEmpty()){
           reqq = reqq+" and price > "+minPrice;
       }
        
    }
    if (request.getParameter("maxprice")!=null){
        maxPrice = request.getParameter("maxprice").toString();
        if(!maxPrice.isEmpty()){
            reqq = reqq+" and price < "+maxPrice;
       }
       
    }

    reqq = reqq + " order by a.id DESC";
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script>
            function showcar(title, brand, model, img, desc, seller, price){
            Swal.fire({
                title: title,
                html:
                    '<b>Brand :</b> '+brand+'<br>' +
                    '<b>Model :</b> '+model+'<br>' +
                    '<b>Price :</b> '+price+'$<br>' +
                    '<b>Vendeur :</b> '+seller+'<br>' +
                    '<b>Description :</b> '+desc+'',
                imageUrl: img,
                imageWidth: 500,
                imageAlt: 'Cannot Find Image',
              })
            }
        </script>
    </head>
    <body>
        <div class="row">
            <%  System.out.println(reqq);
                ResultSet rs = DCM.Select_request(reqq);
                while(rs.next()){
            %>
            <div class="col-lg-4 col-md-6 mb-4">
                <div class="card h-100">
                    <img class="card-img-top carimg" src="<%=rs.getString(8)%>"  onclick="Swal.fire({
                                    imageUrl: '<%=rs.getString(8)%>',
                                    imageAlt: '<%=rs.getString(2)%>'
                                  })">
                  <div class="card-body" onclick="showcar('<%=rs.getString(1)%>', '<%=rs.getString(5)%>', '<%=rs.getString(6)%>', '<%=rs.getString(8)%>', '<%=rs.getString(2)%>','<%=rs.getString(3)%>','<%=rs.getString(7)%>')">
                    <h4 class="card-title text-primary uderlineonhover">
                      <%=rs.getString(1)%>
                    </h4>
                    <h5>$<%=rs.getString(7)%></h5>
                    <p class="card-text"><%=rs.getString(2)%></p>
                  </div>
                  <div class="card-footer">
                      <small class="text-muted"><button type="button" class="btn btn-primary btn-sm" onclick="Swal.fire('<%=rs.getString(4)%>')"><i class="fas fa-phone"></i></button> &nbsp;<%=rs.getString(3)%></small>
                  </div>
                </div>
            </div> 
            <%}%>
        </div>
        
    </body>
</html>
