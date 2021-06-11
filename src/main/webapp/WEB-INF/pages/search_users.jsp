<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=utf-8" %>
<%@ page language="java" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>Search User</title>

</head>
<body>
<h4 class="text-center"><a href="${contextPath}/index">Вернуться на главную страницу</a></h4>
<h4 class="text-center"><a href="${contextPath}/admin">Вернуться на страницу администратора</a></h4>
<div align="center">
    <h2>Найдено:</h2>

    <table border="1" cellpadding="5">
        <tr align="center">
            <td>id</td>
            <td>Имя</td>
            <td>Почта</td>
            <td>Роль</td>
            <td colspan="2">Редактирование</td>
        </tr>
        <c:forEach items="${users_result}" var="user">
            <tr>
                <td>${user.id}</td>
                <td>${user.username}</td>
                <td>${user.email}</td>
                <td>${user.roles}</td>

                <!-- защита от CSRF атак -->
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                <td><a href="${contextPath}/adminUsersEdit?id=${user.id}">Изменить</a></td>
                <td><a href="${contextPath}/adminUsersDelete?id=${user.id}">Удалить</a></td>

            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>