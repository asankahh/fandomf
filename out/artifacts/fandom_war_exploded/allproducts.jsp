<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: asank
  Date: 4/4/2016
  Time: 2:08 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Categories</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/materialize.min.css">

    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Bree Serif">
    <link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/icon?family=Material+Icons">

    <script type="text/javascript" src="js/jquery-2.2.2.min.js"></script>

    <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>

    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/materialize.min.js"></script>

    <style>
        .navbar {
            margin-bottom: 50px;
            border-radius: 0;
        }
    </style>
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

<div class="container">
    <div class="row">

        <div class="col-md-10">
            <div class="input-field col-md-3">
                <select class="icons" title="cat">
                    <option value="0" disabled selected>Choose your option</option>
                    <option value="" data-icon="" class="left circle">movies</option>
                    <option value="" data-icon="" class="left circle">games</option>
                    <option value="" data-icon="" class="left circle">books</option>
                </select>
            </div>
            <div class="input-field col-md-7">
                <input id="search" type="text" class="validate">
                <label for="search">Search</label>
            </div>

            <div class="col-md-2">
                <button class="waves-effect waves-teal btn-flat">Search<i class="material-icons right">send</i></button>
            </div>
        </div>

    </div>
</div>

<br/>
<br/>

<%List prdList = (List) session.getAttribute("prdtList"); %>


<div class="container">
    <%=prdList%>
    <%--<forEach items="${prdList}" var="prdt">--%>
        <div class="row">
            <div class="col-sm-4">
                <div class="card">
                    <div class="card-image waves-effect waves-block waves-light">
                        <img class="activator" src="http://materializecss.com/images/sample-1.jpg">
                    </div>
                    <div class="card-content">
                <span class="card-title activator grey-text text-darken-4">Special Offer 3<i
                        class="material-icons right">more_vert</i></span>
                        <div class="card-action">
                            <a href="productview.jsp">
                                <button class="waves-effect waves-teal btn-flat"><i
                                        class="material-icons">info_outline</i>
                                </button>
                            </a>
                            <a href="#">
                                <button class="waves-effect waves-teal btn-flat"><span
                                        class="glyphicon glyphicon-bookmark"></span></button>
                            </a>
                            <a href="#">
                                <button class="waves-effect waves-teal btn-flat"><span
                                        class="glyphicon glyphicon-shopping-cart"></span></button>
                            </a>
                        </div>
                    </div>
                    <div class="card-reveal">
                <span class="card-title grey-text text-darken-4">Special Offer 3<i
                        class="material-icons right">close</i></span>
                        <p>Sample Text Here.Here is some more information about this product that is only revealed once
                            clicked on.</p>
                    </div>
                </div>
            </div>
        </div>
    <%--</forEach>--%>

</div>


<script>
    $(document).ready(function () {
        $('select').material_select();
    });
</script>
</body>
</html>
