<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=utf-8" %>
<%@ page language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>New Customer</title>
</head>
<body>
<h4 class="text-center"><a href="${contextPath}/index">Вернуться на главную страницу</a></h4>
<h4 class="text-center"><a href="${contextPath}/admin">Вернуться на страницу администратора</a></h4>
<div align="center">
    <h2>Новый покупатель</h2>

    <form:form action="save" method="post" modelAttribute="customer" >
        <table border="0" cellpadding="5">

            <tr>
                <td>Имя: </td>
                <td><form:input path="firstname" /></td>
            </tr>
            <tr>
                <td>Фамилия: </td>
                <td><form:input path="lastname" /></td>
            </tr>
            <tr>
                <td>Телефон: </td>
                <td><form:input path="phone" /></td>
            </tr>
            <tr>
                <td>Адрес: </td>
                <td><form:input path="address" /></td>
            </tr>
            <tr>
                <td>Улица: </td>
                <td><form:input path="street" /></td>
            </tr>
            <tr>
                <td>Город: </td>
                <td><form:input path="city" /></td>
            </tr>
            <tr>
                <td>Государство: </td>
                <td><form:input path="state" /></td>
            </tr>
            <tr>
                <td>Индекс: </td>
                <td><form:input path="postal" /></td>
            </tr>
            <tr>
                <td>Страна: </td>
                <td><form:input path="country" /></td>
            </tr>
            <tr>
                <!-- защита от CSRF атак -->
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>

                <td colspan="2"><input type="submit" value="Сохранить"></td>
<%--                <td><input type="submit" value="Вернуться"><a href="${contextPath}/admin"></a></td>--%>
            </tr>
        </table>
    </form:form>
</div>
</body>
</html>