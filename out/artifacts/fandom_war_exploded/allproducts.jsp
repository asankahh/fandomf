<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>
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

    <%--<script type="text/javascript" src="js/bootstrap.min.js"></script>--%>
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
<%--<form name="form" method="get" action="S_productView">--%>
    <%--<input type="hidden" name="hd"/>--%>
    <%--<input type="button" name="bt" value="gi" onclick="{document.form.hd.value=this.value;document.form.submit();}"/>--%>
<%--</form>--%>

<div class="container">
    <form name="form" method="get" action="">

    <%
        ResultSet rs = (ResultSet)request.getAttribute("rs");
        String prdctimg = "resourse/uploads/prdcts/";
        String imgnm = null;
        while (rs.next()){
            try {imgnm = rs.getString("P_Img");} catch (SQLException e) {e.printStackTrace();}
    %>

    <div class="col-sm-4">
        <div class="card">
            <div class="card-image waves-effect waves-block waves-light">
                    <img class="activator" src="<% out.print(prdctimg+imgnm); %>">
            </div>
            <div class="card-reveal">
                <span class="card-title grey-text text-darken-4">
                    <%
                        try {  out.print(rs.getString("P_Name"));} catch (SQLException e) {e.printStackTrace();}
                    %>
                    <i class="material-icons right">close</i></span>
                <input type="text" name="n" id="nm" disabled
                       value="" title="">
                <p>
                    <%
                        try {out.print(rs.getString("P_Desc"));} catch (SQLException ex) {ex.printStackTrace();}
                    %>
                </p>
            </div>
            <div class="card-content">
                <span class="card-title activator grey-text text-darken-4"><%
                    try {
                        out.print(rs.getString("P_Name"));
                    } catch (SQLException e) {
                        e.printStackTrace();
                    }
                %><i class="material-icons right">more_vert</i></span>
                <div class="card-action">
                    <div class="row">
                        <input type="hidden" name="hd" value="gttt">
                        <a href="${pageContext.request.contextPath}/S_productView?bt=<%try{out.print(rs.getString("P_ID"));}catch (SQLException SQLEX){SQLEX.printStackTrace();}%>"><i class="material-icons">info_outline</i></a>
                        <a href="#"><input hidden type="button"/><i class="material-icons">favorite_outline</i></a>
                        <a href="#"><input hidden type="button"><i class="material-icons">shopping_cart_plus</i></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
<%--</form>--%>
<%}
    try {
    } catch (Exception e) {
    }
%>
    </form>
</div>

<script>
    $(document).ready(function () {
        $('select').material_select();
    });
</script>


</body>
</html>
