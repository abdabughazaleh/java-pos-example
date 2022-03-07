<%--
  Created by IntelliJ IDEA.
  User: abdab
  Date: 3/5/2022
  Time: 8:36 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <!-- Bootstrap core CSS -->
    <link href="https://getbootstrap.com/docs/3.4/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">

    <div class="main-box" style="margin-top:100px;">
        <h3>
            <c:set var="type" value="${request.getParamter('type')}" />

            <div class="alert alert-warning">
                Username or password wrong. ${type}
            </div>
        </h3>
        <form action="sign-in" method="post">
            <div class="col-sm-8">
                <div class="form-group">
                    <label for="username">Username</label>
                    <input type="text" name="username" id="username" class="form-control">
                </div>
                <div class="form-group">
                    <label for="password">Password</label>
                    <input type="text" name="password" id="password" class="form-control">
                </div>
                <div class="form-group">
                    <button class="btn btn-success">Login</button>
                </div>
            </div>
        </form>
    </div>

</div>
<!-- /.container -->
</body>
</html>