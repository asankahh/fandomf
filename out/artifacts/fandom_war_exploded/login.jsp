<%--
  Created by IntelliJ IDEA.
  User: asank
  Date: 4/29/2016
  Time: 3:27 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/materialize.min.css">
    <link rel="stylesheet" type="text/css" href="css/style.css" >

    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Bree Serif">
    <link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/icon?family=Material+Icons" >

    <script type="text/javascript" src="js/jquery-2.2.2.min.js"></script>

    <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>

    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/materialize.min.js"></script>
</head>


<body>

    <div class="container">
        <div class="col-md-3"></div>
        <div class="col-md-6">
            <form method="post" action="S_Logging" class="loginblock">
                <div>
                    <div class="input-field">
                        <i class="material-icons prefix">account_circle</i>
                        <input id="un" name="un" type="text" class="validate">
                        <label for="un">First Name</label>
                    </div>
                    <div class="input-field">
                        <i class="material-icons prefix">lock</i>
                        <input id="password" name="pw" type="password" class="validate">
                        <label for="password">Password</label>
                    </div>
                    <div style="float: right;">
                        <button class="btn waves-effect waves-light" type="submit" name="lgin">Login
                            <i class="material-icons right">assignment_ind</i>
                        </button>
                    </div>
                </div>
            </form>

            <div class="newuser">
                <h1>New User?</h1>
                <h3>Regester Now</h3>
                <div style="float: right">
                    <a href="signup.jsp">
                        <button class="btn waves-effect waves-light" type="submit" name="#">Sign Up
                            <i class="material-icons right">send</i>
                        </button>
                    </a>

                </div>
            </div>
        </div>
        <div class="col-md-3"></div>
    </div>

</body>
</html>
