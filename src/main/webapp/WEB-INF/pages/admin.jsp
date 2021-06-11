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
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Admin</title>

</head>
<body>
<h4 class="text-center"><a href="${contextPath}/index">Вернуться на главную страницу</a></h4>
<div class="container">
    <c:if test="${pageContext.request.userPrincipal.name != null}">
        <h2>Администратор, ${pageContext.request.userPrincipal.name}

        </h2>
        <form id="logoutForm" method="post" action="${contextPath}/logout">

            <!-- защита от CSRF атак -->
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>

            <button class="btn btn-lg btn-primary btn-block" type="submit">Выход</button>
        </form>

    </c:if>

    <h3><a href="${contextPath}/adminUsers">База данных пользователей</a></h3>
</div>
<!--    -------   -->

<div align="center">
    <h2>База данных покупателей</h2>

    <form method="get" action="${contextPath}/search">
        <input type="text" name="keyword" />
        <input type="submit" value="Поиск" />
    </form>
<br>


<%--    <h3><a href="${contextPath}/new">Добавить нового покупателя</a></h3>--%>

    <table border="1" cellpadding="5">

        <tr align="center">
            <td>id</td>
            <td>Имя</td>
            <td>Фамилия</td>
            <td>Телефон</td>
            <td>Адрес</td>
            <td>Улица</td>
            <td>Город</td>
            <td>Государство</td>
            <td>Индекс</td>
            <td>Страна</td>
            <td colspan="2">Редактирование</td>
        </tr>

      <c:forEach items="${listCustomers}" var="customer">
            <tr>
                <td>${customer.id}</td>
                <td>${customer.firstname}</td>
                <td>${customer.lastname}</td>
                <td>${customer.phone}</td>
                <td>${customer.address}</td>
                <td>${customer.street}</td>
                <td>${customer.city}</td>
                <td>${customer.state}</td>
                <td>${customer.postal}</td>
                <td>${customer.country}</td>

                <td><a href="${contextPath}/edit?id=${customer.id}">Изменить</a></td>
                <td><a href="${contextPath}/delete?id=${customer.id}">Удалить</a></td>

            </tr>
       </c:forEach>
    </table>




</div>
</body>
</html>