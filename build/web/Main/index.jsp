<%-- 
    Document   : index
    Created on : May 29, 2020, 7:35:18 PM
    Author     : Ilyas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Southern Super Auto</title>
    </head>
    <body>
        <%@include file="../Main/header.jsp"%>
        <div class="contentmain">
            <!--div class="text-center"><img src="https://www.dealereprocess.com/wp-content/uploads/BMW_330i.jpg" class="img-fluid" alt="banner"></div-->
            <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                <ol class="carousel-indicators">
                  <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                  <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                  <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                </ol>
                <div class="carousel-inner">
                  <div class="carousel-item active">
                    <img src="https://www.dealereprocess.com/wp-content/uploads/BMW_330i.jpg" class="d-block w-100" alt="...">
                  </div>
                  <div class="carousel-item">
                    <img src="https://www.passportauto.com/blogs/848/wp-content/uploads/2019/11/NOV_PUSH_BMW_Black_Friday_ER-1024x418.jpg" class="d-block w-100" alt="...">
                  </div>
                  <div class="carousel-item">
                    <img src="https://www.passportauto.com/blogs/848/wp-content/uploads/2020/05/BMW90-1024x418.png" class="d-block w-100" alt="...">
                  </div>
                </div>
                <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                  <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                  <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                  <span class="carousel-control-next-icon" aria-hidden="true"></span>
                  <span class="sr-only">Next</span>
                </a>
              </div>
            <br>
            <%@include file="../Main/toolbar.jsp"%>
            
        </div>
    </body>
</html>
