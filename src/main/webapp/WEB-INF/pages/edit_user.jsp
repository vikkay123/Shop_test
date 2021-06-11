<%@ page contentType="text/html;charset=utf-8" %>
<%@ page language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>Edit User</title>
</head>
<body>
<div align="center">
    <h2>Редактирование данных пользователя</h2>
    <form:form action="adminUsersSave" method="post" modelAttribute="editUser">
        <table border="0" cellpadding="5">
            <tr> <td>id: </td>
                <td>
                    <form:hidden path="id"/>
                </td>
            </tr>
            <tr>
                <td>Имя: </td>
                <td><form:input path="username" /></td>
            </tr>
            <tr>
                <td>Email: </td>
                <td><form:input path="email" /></td>
            </tr>
            <tr>
                <td>Роль: </td>
                <td><form:input path="roles" /></td>



<%--                <td>--%>
<%--                <select name="roles">--%>
<%--                    <option value="1">ROLE_ADMIN</option>--%>
<%--                    <option value="2">ROLE_USER</option>--%>
<%--                    <option value="3">ROLE_CONSUMER</option>--%>
<%--                    <option value="4">ROLE_STOREKEEPER</option>--%>
<%--                </select>--%>
<%--                </td>--%>
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