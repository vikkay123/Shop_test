<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

    <title>Склад</title>


</head>
<body>
<h4 class="text-center"><a href="${contextPath}/index">Вернуться на главную страницу</a></h4>
<div class="container">
    <c:if test="${pageContext.request.userPrincipal.name != null}">
        <h2>Вы вошли на склад, ${pageContext.request.userPrincipal.name}

        </h2>
        <form id="logoutForm" method="post" action="${contextPath}/logout">

            <!-- защита от CSRF атак -->
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>

            <button class="btn btn-lg btn-primary btn-block" type="submit">Выход</button>
        </form>

    </c:if>
</div>

</body>
</html>