<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%--
  Created by IntelliJ IDEA.
  User: asanka
  Date: 4/29/2016
  Time: 8:25 PM
  To change this template use File | Settings | File Templates.
--%>

<html>
<head>
    <title>$ItemName$</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="css/materialize.css">
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <link rel="stylesheet" type="text/css" href="css/w3.css">
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Bree Serif">
    <link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" type="text/css" href="css/lightslider.css">
    <script type="text/javascript" src="js/jquery-2.2.2.min.js"></script>
    <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/materialize.min.js"></script>
    <script type="text/javascript" src="js/lightslider.js"></script>
</head>
<body>

<nav class="navbar navbar-inverse">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">Fandom Corner</a>
        </div>
        <div class="collapse navbar-collapse" id="myNavbar">
            <ul class="nav navbar-nav">
                <li><a href="index.jsp">Deals</a></li>
                <li class="active"><a href="allproducts.jsp">Browse All</a></li>
                <li><a href="#">Movies</a></li>
                <li><a href="#">Games</a></li>
                <li><a href="#">Accesories</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="#"><span class="glyphicon glyphicon-user"></span> [User's Name]</a></li>
                <li><a href="#"><span class="glyphicon glyphicon-shopping-cart"></span> Cart</a></li>
                <li><a href="#"><span class="glyphicon glyphicon-earphone"></span> Contact Us</a></li>
            </ul>
        </div>
    </div>
</nav>

<div class="container" id="productbox">

    <div class="col-md-10">
        <%
            ResultSet rsprdct = (ResultSet)request.getAttribute("prdct");
            String tst = null;
            String prdctimg = "resourse/uploads/prdcts/";
            String imgnm = null;
            while(rsprdct.next()){
                try {imgnm = rsprdct.getString("P_Img");} catch (SQLException e) {e.printStackTrace();}


        %>
        <div class="col-md-2" id="productshwcs" style="margin: 10px;">
            <img class="materialboxed" width="100" src="<% out.print(prdctimg+imgnm); %>">
            <img class="materialboxed" width="100" src="resourse/prdctthumbnail/MB%20(2).jpg">
            <img class="materialboxed" width="100" src="resourse/prdctthumbnail/MB%20(3).jpg">
            <img class="materialboxed" width="100" src="resourse/prdctthumbnail/MB%20(3).jpg">
            <img class="materialboxed" width="100" src="resourse/prdctthumbnail/MB%20(3).jpg">
        </div>
        <div id="productdetail">
            <form method="post" action="#">


            <ul class="collection with-header">
                <li class="collection-header teal lighten-5"><h3 id="name"><%try{out.print(rsprdct.getString("P_Name"));} catch (SQLException e){e.printStackTrace();}%></h3></li>
                <li class="collection-item teal lighten-5"><p id="desc"><%try{out.print(rsprdct.getString("P_Desc"));} catch (SQLException e){e.printStackTrace();}%></p></li>
                <li class="collection-item teal lighten-5"><h4>Price: </h4><p id="price"><%try{out.print(rsprdct.getString("P_Price"));} catch (SQLException e){e.printStackTrace();}%></p><input style="width: 100px" type="text" id="qntt" placeholder="Quantity"></li>
                <li class="collection-item teal lighten-5"><h4>Shipping methods : </h4><p id="shipping">Standard</p></li>
                <li class="collection-item teal lighten-5">
                    <button id="now" class="btn waves-effect waves-light">BuyNow</button>
                    <button style="margin-left: 10px" id="cart" class="btn waves-effect waves-light">Add to cart</button>
                    <button style="margin-left: 10px" id="wish" class="btn waves-effect waves-light">Add to wishlist</button>

                </li>
            </ul>

            </form>
        </div>
        <%
            }
        %>
    </div>


</div>


<script>
    $(document).ready(function(){
        $('.materialboxed').materialbox();
    });
</script>

</body>
</html>
