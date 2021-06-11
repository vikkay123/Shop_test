<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=utf-8" %>
<%@ page language="java" pageEncoding="UTF-8" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Вход</title>

<%--    <link href="${contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">--%>
<%--    <link href="${contextPath}/resources/css/common.css" rel="stylesheet">--%>

<%--    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>--%>
<%--    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>--%>

</head>

<body>

<div class="container">
    <h4 class="text-center"><a href="${contextPath}/index">На главную</a></h4>
    <div style="text-align: left;">
    <form method="POST" action="${contextPath}/login" class="form-signin">


        <h2 class="form-heading">Вход в личный кабинет</h2>

        <div class="form-group ${error != null ? 'has-error' : ''}">
            <span>${message}</span>
            <br>
            <input name="username" type="text" class="form-control" placeholder="Имя"
                   autofocus="true"/>
            <input name="password" type="password" class="form-control" placeholder="Пароль"/>
            <span>${error}</span>


            <!-- защита от CSRF атак -->
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
<br><br>
            <button class="btn btn-lg btn-primary btn-block" type="submit">Войти</button>


        </div>

    </form>
    </div>
</div>
<!-- /container -->
<%--<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>--%>
<%--<script src="${contextPath}/resources/js/bootstrap.min.js"></script>--%>
</body>
</html>