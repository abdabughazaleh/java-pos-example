    <%@ page import="com.microsoft.pos.dao.User" %><%--
  Created by IntelliJ IDEA.
  User: abdab
  Date: 3/5/2022
  Time: 9:20 PM
  To change this template use File | Settings | File Templates.
--%>
        <%@ page contentType="text/html;charset=UTF-8" language="java" %>


        <!doctype html>
        <html lang="en">
        <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags
        -->
        <meta name="description" content="">
        <meta name="author" content="">
        <link rel="icon" href="https://getbootstrap.com/docs/3.4/favicon.ico">

        <title>Starter Template for Bootstrap</title>

        <!-- Bootstrap core CSS -->
        <link href="https://getbootstrap.com/docs/3.4/dist/css/bootstrap.min.css" rel="stylesheet">

        <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
        <link href="https://getbootstrap.com/docs/3.4/assets/css/ie10-viewport-bug-workaround.css" rel="stylesheet">

        <!-- Custom styles for this template -->
        <link href="https://getbootstrap.com/docs/3.4/examples/starter-template/starter-template.css" rel="stylesheet">

        <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
        <!--[if lt IE 9]><script
        src="https://getbootstrap.com/docs/3.4/assets/js/ie-emulation-modes-warning.js"></script><![endif]-->
        <script src="https://getbootstrap.com/docs/3.4/examples/starter-template/starter-template.css"></script>

        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!--[if lt IE 9]>
        <script src="https://cdn.jsdelivr.net/npm/html5shiv@3.7.3/dist/html5shiv.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/respond.js@1.4.2/dest/respond.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.css"></script>
        <script src="https://cdn.datatables.net/1.11.5/css/dataTables.bootstrap4.min.css"></script>
        <![endif]-->


        <link rel="stylesheet" href="https://lipis.github.io/bootstrap-sweetalert/dist/sweetalert.css">
        </head>

        <body>

        <nav class="navbar navbar-inverse navbar-fixed-top">
        <div class="container">
        <div class="navbar-header">
        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar"
        aria-expanded="false" aria-controls="navbar">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand" href="#">Project name</a>
        </div>
        <div id="navbar" class="collapse navbar-collapse">
        <ul class="nav navbar-nav">
        <li class="active"><a href="/pos">POS</a></li>
        <li><a href="add-item">Add Item</a></li>
        <li><a href="items">Show Items</a></li>
        <li><a href="items">Welcome Back :<%= session.getAttribute("username")  %></a></li>
        </ul>
        </div><!--/.nav-collapse -->
        </div>
        </nav>
