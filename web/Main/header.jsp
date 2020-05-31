<%-- 
    Document   : header
    Created on : May 29, 2020, 7:36:00 PM
    Author     : Ilyas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    
    String sess = "";
    String rank = "";
    String isAdmin = "none";
    String isLoged = "none";
    String isNotLoged = "inline-block";
    
    if (session.getAttribute("login") == null){
        isLoged = "none";
        isNotLoged = "inline-block";
    } else {
        sess = session.getAttribute("login").toString();
        rank = session.getAttribute("rank").toString();
        isLoged = "inline-block";
        isNotLoged = "none";
    }
    if (rank.equals("admin")){
        isAdmin = "inline-block";
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.materialdesignicons.com/5.3.45/css/materialdesignicons.min.css">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <link rel="stylesheet/less" type="text/css" href="../style.less" />
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
        <script src="../libs/less.min.js" ></script>
        <script src="../libs/jquery-3.5.0.js" ></script>
    </head>
    <body>
      <nav class="navbar navbar-expand-lg navbar-dark bg-primary sticky-top">
          <a class="navbar-brand" href="../Main/index.jsp"><h3><i class="fab fa-autoprefixer"></i> Southern Super Auto</h3></a>
        <ul class="navbar-nav form-inline my-2 my-lg-0">
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <i class="far fa-user-circle"></i>
          </a>
          <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
            <a class="dropdown-item" href="../Main/login.jsp" style="display:<%=isNotLoged%>;">Login</a>
            <a class="dropdown-item" href="../Main/register.jsp" style="display:<%=isNotLoged%>;">Register</a>
            <a class="dropdown-item" href="../Main/profile.jsp" style="display:<%=isLoged%>;"><i class="far fa-address-card"></i> &nbsp;Your account</a>
            <a class="dropdown-item" href="../Main/admin.jsp" style="display:<%=isAdmin%>;"><i class="fas fa-cog"></i> &nbsp;Admin Panel</a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="../scripts/script-logout.jsp" style="display:<%=isLoged%>;"><i class="fas fa-sign-out-alt"></i> &nbsp;Logout</a>
          </div>
        </li>
      </ul>
      </div>
    </nav>
    </body>
</html>
