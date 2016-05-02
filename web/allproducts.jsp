<%@ page import="java.sql.ResultSet" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%--
  Created by IntelliJ IDEA.
  User: asank
  Date: 4/4/2016
  Time: 2:08 PM
  To change this template use File | Settings | File Templates.
--%>

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
<table border="0" id="prdct">
    <tr>
        <c:forEach var="columnName" items="${result.columnNames}">
            <th><c:out value="${columnName}"/> </th>
        </c:forEach>
    </tr>
    <c:forEach var="row" items="${result.rowsByIndex}">
        <tr>
            <c:forEach var="column" items="${row}">
                <td><c:out value="${column}"/></td>
            </c:forEach>
        </tr>
    </c:forEach>
</table>
<script>
    var ptbl = document.getElementById('prdct').tBodies[0];
    for(var r=0,n=ptbl.rows.length;r<n;r++){
        for(var c=0,m=ptbl.rows[r].cells.length; c<m; c++){
            if(ptbl.rows[r].cells[c].childNodes[0].value){
                var nm0 = ptbl.rows[0].cells[1].innerHTML;
                var dsc0= ptbl.rows[0].cells[2].innerHTML;
                document.getElementById("nm0").innerHTML=nm0;
                document.getElementById("nmin0").innerHTML=nm0;
                document.getElementById("dsc0").innerHTML=dsc0
            }
        }
    }
</script>

<br/>

<div class="container">

    <div class="row">
        <% ResultSet rs = (ResultSet)request.getAttribute("rs");
            while (rs.next()){ %>
        <div class="col-sm-4">
            <div class="card">
                <div class="card-image waves-effect waves-block waves-light">
                    <img class="activator" src="http://materializecss.com/images/sample-1.jpg">
                </div>
                <div class="card-content">
                    <span class="card-title activator grey-text text-darken-4" id="nm10"><i class="material-icons right">more_vert</i></span>
                    <div class="card-action">
                        <a href="productview.jsp">
                            <button class="waves-effect waves-teal btn-flat"><i class="material-icons"><%= rs.getString(1) %></i></button>
                        </a>
                        <a href="#">
                            <button class="waves-effect waves-teal btn-flat"><span class="glyphicon glyphicon-bookmark"><%= rs.getString(2) %></span></button>
                        </a>
                        <a href="#">
                            <button class="waves-effect waves-teal btn-flat"><span class="glyphicon glyphicon-shopping-cart"><%= rs.getString(3) %></span></button>
                        </a>
                    </div>
                </div>
                <div class="card-reveal">
                    <span class="card-title grey-text text-darken-4" id="nmin0"><i class="material-icons right">close</i></span>
                    <p id="dsc0"></p>
                </div>
            </div>
        </div>
    </div>
    <% } %>
</div>


<script>
    $(document).ready(function () {
        $('select').material_select();
    });
</script>


</body>
</html>
