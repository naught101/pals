<!DOCTYPE html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html ng-app="easyLaw">
<head>
<title>PALS</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/core.css" media="screen"/>
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/handheld.css" media="handheld, only screen and (max-device-width:480px)"/>
<meta name="viewport" content="width=device-width" />
<script>
    var baseUrl = '<%=request.getContextPath()%>';
</script>
<script src="<%=request.getContextPath()%>/resources/js/jquery.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/angular.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/angular-sanitize.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/easyLaw.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/controller/base.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/controller/home.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/controller/login.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/controller/signup.js"></script>
<link rel="icon" type="image/png" href="<%=request.getContextPath()%>/resources/images/favicon.png"/>
</head>
<body ng-controller="BaseCtrl">

<nav class="main-menu">
    <ul>
        <li><a href="#!/home">Home</a></li>
        <li ng-show="!user.success"><a href="#!/login">Log In</a></li>
        <li ng-show="user.success"><a href="{{baseUrl}}/j_spring_security_logout">Log Out</a></li>
    </ul>
</nav>
<div class="main">
    <div ng-view></div>
</div>
</body>
</html>