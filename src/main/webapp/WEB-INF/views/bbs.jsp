<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ja">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>掲示板</title>
</head>
<body>

<h1>掲示板</h1>
<hr>

<form:form action="${pageContext.request.contextPath}/create" modelAttribute="userForm">
	名前：
	<form:input path="name"/><br>
	内容：
	<form:textarea path="message"/><br>
	
	<input type="submit" value="投稿">
</form:form>

<c:forEach var="user" items="${userList}">
	<c:out value="${user.name}"></c:out>
	さんの投稿<br>
	<c:out value="${user.message}"></c:out><br>
</c:forEach>

</body>
</html>