<!-- @author Harish, https://github.com/Harish046, UserDetails.jsp -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>User Details</title>
<%@ page isELIgnored="false"%>
<style>
body {
	background-color: #262626;
}

h1, table, div, nav {
	font-family: sans-serif;
	color: #ffffff;
}

a {
	color: #cc0000;
}
</style>
</head>
<body>
	<nav>
		<a href="${pageContext.request.contextPath}">Home</a>&nbsp;/&nbsp;<a
			href="${pageContext.request.contextPath}/jsp/users">User info</a>&nbsp;/&nbsp;<a>User
			details</a>
	</nav>
	<h1 align="center">J&nbsp;&nbsp;S&nbsp;&nbsp;P</h1>
	<br />
	<table align="center">
		<tr>
			<td><label>Name:</label></td>
			<td><c:out value="${user.name}" /></td>
		</tr>
		<tr>
			<td><label>Age:</label></td>
			<td><c:out value="${user.age}" /></td>
		</tr>
		<tr>
			<td><label>Email:</label></td>
			<td><c:out value="${user.email}" /></td>
		</tr>
		<%-- <tr> //commenting this field since to have a difference between thymeleaf and jsp
			<td><label>Mobile:</label></td>
			<td> <c:out value="${user.mobile}"/> </td>
		</tr> --%>
	</table>
	<div align="right">
		Go to thymeleaf View <a
			href="${pageContext.request.contextPath}/thl/users"> Go!</a>
	</div>
</body>
</html>