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
    <title>New User</title>
</head>
<body>
<h4 class="text-center"><a href="${contextPath}/index">Вернуться на главную страницу</a></h4>
<h4 class="text-center"><a href="${contextPath}/admin">Вернуться на страницу администратора</a></h4>
<div align="center">
    <h2>Новый пользователь</h2>

    <form:form action="adminUsersSave" method="post" modelAttribute="newUser" >
        <table border="0" cellpadding="5">
            <tr>
                <td>id: </td>
                <td><form:input path="id" /></td>
            </tr>
            <tr>
                <td>Имя: </td>
                <td><form:input path="username" /></td>
            </tr>
            <tr>
                <td>Фамилия: </td>
                <td><form:input path="email" /></td>
            </tr>
            <tr>
                <td>Роль: </td>
                <td><form:input path="roles" /></td>
            </tr>

            <tr>
                <!-- защита от CSRF атак -->
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>

                <td colspan="2"><input type="submit" value="Сохранить"></td>
            </tr>
        </table>
    </form:form>
</div>
</body>
</html>