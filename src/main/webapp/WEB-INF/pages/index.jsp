<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=utf-8" %>
<%@ page language="java" pageEncoding="UTF-8" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <title>Hello World</title>

</head>

<body>
<h2>${message}</h2>

<span style="float: right">
<h4 class="text-center"><a href="${contextPath}/login">Войти</a> | <a href="${contextPath}/registration">Зарегистрироваться</a></h4>
<br>
<h4 class="text-center"><a href="${contextPath}/admin">ADMIN</a> </h4>
</span>


</body>
</html>
