<%--
  Created by IntelliJ IDEA.
  User: asank
  Date: 4/30/2016
  Time: 7:53 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Product Catalogue</title>
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

    <div class="container">
        <form>
            <table>
                <thead>
                <tr>
                    <th id="select"><hr></th>
                    <th data-field="id">Product ID</th>
                    <th data-field="name">Name</th>
                    <th data-field="cat">Category</th>
                    <th data-field="price">Price</th>
                    <th data-field="qntty">Available Quantity</th>
                    <th data-field="desc">Description</th>
                    <th data-field="date">Added Date</th>
                    <th data-field="img">Images</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>
                        <p>
                            <input type="checkbox" id="sel" />
                            <label for="sel"></label>
                        </p>
                    </td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                </tbody>
            </table>
        </form>
    </div>
<form action="#">
    <div class="fixed-action-btn" style="bottom: 45px; right: 24px;">
        <a class="btn-floating btn-large teal">
            <i class="large material-icons">toc</i>
        </a>
        <ul>
            <li><a href="#" class="btn-floating red tooltipped" data-position="left" data-delay="50" data-tooltip="Delete"><i class="material-icons">delete</i></a></li>
            <li><a href="#" class="btn-floating yellow darken-1 tooltipped" data-position="left" data-delay="50" data-tooltip="Edit"><i class="material-icons">mode_edit</i></a></li>
            <li><a href="#" class="btn-floating green tooltipped" data-position="left" data-delay="50" data-tooltip="Add New"><i class="material-icons">queue</i></a></li>
        </ul>
    </div>
</form>
</body>
<script>

    $(document).ready(function(){
        $('.tooltipped').tooltip({delay: 50});
    });
</script>
</html>
