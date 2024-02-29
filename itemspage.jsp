<%@ page import="model.Items" %>
<%@ page import="java.awt.*" %>
<%@ page import="db.DBManager" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
</head>
<body>
<div class="container">
    <%@ include file="navbar.jsp" %>
    <br>
        <div class="container">
    <h2 class="text-center"><strong>Welcome to BITLAB SHOP</strong></h2>
    <p class="text-center" style="color: darkgray">Electronic devices with high quality and service</p>
    <br>
    <div class="row row-cols-1 row-cols-md-3 g-4 text-center">
        <%
            List<Items> items=  DBManager.getAllItems();
            for (Items item: items){
        %>
        <div class="col">
            <div class="card h-80">
                <h4 class="card-header bg-light"><%=item.getName()%></h4>
                <div class="card-body">
                    <h4 class="card-text text-success">$<%=item.getPrice()%></h4>
                    <br>
                    <p class="card-text"><%=item.getDescription()%></p>
                    <a href="#" class="d-grid gap-2 btn btn-success" type="button">Buy Now</a>
                </div>
            </div>
        </div>
        <%
            }
        %>
    </div>
        </div>
</div>
</body>
</html>
