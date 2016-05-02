<%--
  Created by IntelliJ IDEA.
  User: asank
  Date: 4/29/2016
  Time: 7:24 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Your Shopping cart</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="css/materialize.css">
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <link rel="stylesheet" type="text/css" href="css/w3.css">
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Bree Serif">
    <link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/icon?family=Material+Icons">
    <script type="text/javascript" src="js/jquery-2.2.2.min.js"></script>
    <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/materialize.min.js"></script>
</head>
<body>

<div class="container-fluid owncontainer">
    <div class="col-md-1"></div>

    <div class="col-md-7">
        <h1>Your Cart</h1>
        <div class="w3-card-4 w3-margin">
            <header class="w3-container w3-teal">
                <h3>[Product Name]</h3>
            </header>
            <div class="w3-container" style="height: 200px">
                <img src="resourse/FCLogo.png" width="100px" style="float:left; margin-top: 5px">
                <p style="float:right; text-align: justify; margin-left: 110px">[Product desc:Lorem ipsum dolor sit
                    amet, consectetur adipiscing elit. Cras in nulla eros! Nullam hendrerit dignissim nunc, quis iaculis
                    magna eleifend vel? Integer nisi sem, malesuada non dolor id, imperdiet eleifend.]</p>
            </div>
            <footer class="w3-container w3-teal">
                <h5 style="float: right"><a href="#">More....</a></h5>
            </footer>
        </div>
    </div>

    <div class="col-md-4">
        <h3>Your Cart Summery </h3>
        <hr>
        <h4>Total : $99.00</h4>
        <hr>
        <button class="btn waves-effect waves-light" type="submit" name="#">checkout
            <i class="material-icons right">Checkout</i>
        </button>


    </div>

</div>


</body>
</html>
