<%@ page import="java.util.ArrayList" %>
<%@ page import="db.Items" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
<link rel="stylesheet" type="text/css" href="/css/bootstrap.css">
<html>
<head>

</head>
<body>
<%@include file="navbar.jsp"%>
<div>
<div class="container mt-3">
   <div class="row row-cols-1 row-cols-md-3  d-flex justify-content-start">
      <div class="row">
         <h4 class="text-center">
            Welcome to BITLAB SHOP
         </h4>
         <h6 style="color:darkgray" class="text-center">
            Electronic devices with high quality and service
         </h6>
      </div>
   </div>
</div>
</div>
   <br>
   <%
      ArrayList<Items> zattar = (ArrayList<Items>) request.getAttribute("zattar");
      if(zattar!=null){
         for (Items item:zattar) {
            System.out.print(item.getId());
   %>
            <div class="col ">
               <div class="card border-secondary mb-3 " style="max-width: 14rem;">
                  <div class="card-header"><%=item.getName()%></div>
                  <div class="card-body text-secondary">
                     <h5 class="card-title text-success"><%=item.getPrice()%></h5>
                     <p class="card-text"><%=item.getDescription()%></p>
                     <div class="d-grid gap-2">
                        <a href="#" class="btn btn-success">Buy Now</a>
                     </div>
                  </div>
               </div>
            </div>
      <%
            }
         }
      %>
   </div>
</div>
</body>
</html>
