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

    <title>Регистрация</title>

</head>

<body>

<div class="container">
    <h4 class="text-center"><a href="${contextPath}/index">Вернуться на главную страницу</a></h4>
    <div style="text-align: left;">

        <form:form method="POST" modelAttribute="userForm" class="form-signin">
            <h2 class="form-signin-heading">Регистрация</h2>

            <p class="text-left">Имя должно начинаться с буквы. Может содержать русские или латинские буквы, цифры,
                а так же символы: "-" тире и "_" нижнее подчеркивание</p>
            <br>
            <spring:bind path="username">
                <div class="form-group ${status.error ? 'has-error' : ''}">
                    <form:input type="text" path="username" class="form-control" placeholder="Имя"
                                autofocus="true"></form:input>
                    <form:errors path="username"></form:errors>
                </div>
            </spring:bind>
            <br>
            <spring:bind path="email">
                <div class="form-group ${status.error ? 'has-error' : ''}">
                    <form:input type="text" path="email" class="form-control" placeholder="email"
                                autofocus="true"></form:input>
                    <form:errors path="email"></form:errors>
                </div>
            </spring:bind>
            <br>
            <p class="text-left">В пароле могут использоваться строчные и прописные латинские буквы, цифры, а так же спецсимволы: "-_!@#&.+*"
                Минимум 8 символов</p>
            <br>
            <spring:bind path="password">
                <div class="form-group ${status.error ? 'has-error' : ''}">
                    <form:input type="password" path="password" class="form-control" placeholder="Пароль"></form:input>
                    <form:errors path="password"></form:errors>
                </div>
            </spring:bind>
            <br>
            <spring:bind path="confirmPassword">
                <div class="form-group ${status.error ? 'has-error' : ''}">
                    <form:input type="password" path="confirmPassword" class="form-control"
                                placeholder="Повтор пароля"></form:input>
                    <form:errors path="confirmPassword"></form:errors>
                </div>
            </spring:bind>

            <!-- защита от CSRF атак -->
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
            <br>
            <button class="btn btn-lg btn-primary btn-block" type="submit">Зарегистрироваться</button>

        </form:form>
    </div>
</div>


</body>
</html>