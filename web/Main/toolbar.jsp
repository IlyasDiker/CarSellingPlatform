  <%-- 
    Document   : toolbar
    Created on : May 30, 2020, 1:48:24 PM
    Author     : Ilyas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script>
            function refresh(){
                var data =$('#formsearch').serialize();
              $.ajax(
                {
                  url:"../Main/carslist.jsp",
                  data:data,
                  success:function(result){
                      $("#res").html(result);
                  }
                }
             );
          };
        </script>
    </head>
    <body>
        <div class="container row">
            <div class="col-3"><a href="../Main/AjouterAnnonce.jsp"><button type="button" class="btn btn-primary btn-block searchbtn"><h2><i class="fas fa-car"></i></h2>Ajouter une Annonce</button></a></div>
            <div class="col-9">
                <form id="formsearch">
                    <div class="form-group">
                        <input type="text" class="form-control" id="title" name="title" placeholder="Titre">
                    </div>
                    <div class="form-group">
                        <!--input type="text" class="form-control" placeholder="Marque" id="brand" name="brand"-->
                        <select class="form-control" id="brand" name="brand">
                            <option selected="" disabled="">Select the brand</option>
                            <%
                                ResultSet rs_1=DCM.Select_request("select DISTINCT brand from annonce");
                                while (rs_1.next()) {
                                    %><option value="<%=rs_1.getString(1)%>"style="text-transform: capitalize;"><%=rs_1.getString(1)%></option><%                                        
                                    }
                            %>
                        </select>
                    </div>
                    <div class="form-group row">
                        <div class="col"><input type="number" class="form-control" id="exampleInputEmail1" name="minprice" placeholder="Min Price" aria-describedby="minprice"></div>
                        <div class="col"><input type="number" class="form-control" id="exampleInputEmail1" name="maxprice" placeholder="Max Price" aria-describedby="maxpricec"></div>
                        <div class="col"><button type="button" class="btn btn-primary btn-block" onclick="refresh();" name="button" value="1"><i class="fas fa-search"></i> 	&nbsp;Search</button></div>
                    </div>
                </form>
            </div>
        </div>
        <hr class="my-4">
            <div class="jumbotron"id="res">
                <%@include file="../Main/carslist.jsp"%>
            </div>
    </body>
</html>
