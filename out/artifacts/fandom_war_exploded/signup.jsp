<%--
  Created by IntelliJ IDEA.
  User: asank
  Date: 4/29/2016
  Time: 4:06 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Sign up</title>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <%--<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">--%>
    <%--<link rel="stylesheet" type="text/css" href="css/bootstrap.css">--%>
    <%--<link rel="stylesheet" type="text/css" href="css/materialize.min.css">--%>
    <link rel="stylesheet" type="text/css" href="css/materialize.css">
    <link rel="stylesheet" type="text/css" href="css/style.css" >

    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Bree Serif">
    <link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/icon?family=Material+Icons" >

    <script type="text/javascript" src="js/jquery-2.2.2.min.js"></script>

    <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>

    <%--<script type="text/javascript" src="js/bootstrap.min.js"></script>--%>
    <script type="text/javascript" src="js/materialize.min.js"></script>
</head>
<body>

<div class="container">
    <div class="col-md-2"></div>
    <div class="col-md-8">
        <div class="container">

            <form method="post" action="S_signup" class="formblock">

                <div class="row">
                    <div class="col s4">
                        <img id="dpimg" src="#" alt="DP" class="circle responsive-img"> <!-- notice the "circle" class -->
                    </div>
                    <div class="file-field input-field col s8">
                        <div class="file-field input-field">
                            <div class="btn">
                                <span>File</span>
                                <input type="file" accept="*image/*" onchange="loadFile(event)">
                            </div>
                            <div class="file-path-wrapper">
                                <input class="file-path validate" type="text" name="dp">
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="input-field col s6">
                        <input type="text" id="fn" name="fn" placeholder="First name">
                        <label for="fn">First Name</label>
                    </div>

                    <div class="input-field col s6">
                        <input type="text" id="ln" name="ln" placeholder="Last name">
                        <label for="ln">Last Name</label>
                    </div>
                </div>

                <div class="row">
                    <div class="input-field col s12">
                        <input id="pw" name="pw" type="password" placeholder="Choose password" class="validate">
                        <label for="pw">Password</label>
                    </div>
                </div>

                <div class="row">
                    <div class="input-field col s12">
                        <input id="pwcnf" name="pwcnf" type="password" placeholder="confirm password here" class="validate">
                        <label for="pwcnf">Confirm Password</label>
                    </div>
                </div>

                <div class="row">
                    <div class="input-field col s12">
                        <input id="email" name="em" type="email" class="validate" placeholder="mostly use email">
                        <label for="email">Email</label>
                    </div>
                    <p>
                        <input type="checkbox" id="nws" name="nws" />
                        <label for="nws">Subscribe me for newsletters</label>
                    </p>
                </div>

                <label for="dob">Date Of Birth</label>
                <div class="row" id="dob">
                    <div class="input-field col s4">
                        <input type="text" id="yr" name="yr" placeholder="Birth Year">
                    </div>

                    <div class="input-field col s4">
                        <select id="mnth" name="mnth">
                            <option value="" disabled selected>Choose your Birth month</option>
                        </select>
                    </div>

                    <div class="input-field col s4">
                        <select id="dt" name="dt">
                            <option value="" disabled selected>Choose your Birth date</option>
                        </select>
                    </div>
                </div>

                <div class="row">
                    <div class="input-field col s12">
                        <input id="ad1" type="text" name="ad1" placeholder="address line 1" class="validate">
                        <label for="ad1">Address</label>
                    </div>
                </div>

                <div class="row">
                    <div class="input-field col s12">
                        <input id="ad2" type="text" name="ad2" placeholder="address line 2" class="validate">
                        <label for="ad2">Address</label>
                    </div>
                </div>
                <div class="row">
                    <div class="input-field col s12">
                        <input id="cty" type="text" name="cty" placeholder="City/Town" class="validate">
                        <label for="cty">City</label>
                    </div>
                </div>

                <div class="row">
                    <div class="input-field col s12">
                        <input id="pcd" type="text" name="pcd" placeholder="Postal Code / Zip Code" class="validate">
                        <label for="pcd">Postal Code</label>
                    </div>
                </div>
                <label for="gndr">Gender</label>
                <div class="row" id="gndr">
                    <p class="col s4">
                        <input class="with-gap" name="gndr" type="radio" id="male" value="m" />
                        <label for="male">Male</label>
                    </p>
                    <p>
                        <input class="with-gap" name="gndr" type="radio" id="female" value="f"  />
                        <label for="female">Female</label>
                    </p>
                </div>
                <div class="row">
                    <div class="input-field col s12">
                        <input id="tp-h" type="tel" name="tph" placeholder="Home/Work" class="validate">
                        <label for="tp-h">Telephone</label>
                    </div>
                </div>
                <div class="row">
                    <div class="input-field col s12">
                        <input id="tp-m" type="tel" name="tpm" placeholder="mobilephone" class="validate">
                        <label for="tp-m">Mobile Phone</label>
                    </div>
                </div>
                <div class="row">
                    <div class="col m5"><hr></div>
                    <button class="btn waves-effect waves-light" type="reset">
                        Clear Fields
                        <i class="material-icons right">clear_all</i>
                    </button>
                    <button class="btn waves-effect waves-light" type="submit">
                        Submit
                        <i class="material-icons right">send</i>
                    </button>
                </div>
                <%String nt = (String) request.getAttribute("message");%>
                <% if (nt != null){%>
                <script>
                    Materialize.toast('<%=request.getAttribute("message")%>', 3000, 'rounded')
                </script>

                <%}%>
            </form>
        </div>
    </div>
    <div class="col-md-2"></div>
</div>

<script type="text/javascript" src="js/my.js"></script>

</body>
</html>
