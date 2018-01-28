<!-- @author Harish, https://github.com/Harish046, UserInfo.jsp -->
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<title>User Info</title>
<%@ page isELIgnored="false"%>
<style>
body {
	background-color: #262626;
}

h1, table, nav {
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
		<a href="${pageContext.request.contextPath}">Home</a>&nbsp;/&nbsp;<a>User
			info</a>
	</nav>
	<h1 align="center">J&nbsp;&nbsp;S&nbsp;&nbsp;P</h1>
	<br />
	<form:form action="${pageContext.request.contextPath}/jsp/users"
		modelAttribute="user" method="POST">
		<table align="center">
			<tr>
				<td><label>Name:</label></td>
				<td><form:input path="name" required="required" /></td>
			</tr>
			<tr></tr>
			<tr>
				<td><label>Age:</label></td>
				<td><form:input path="age" required="required" /></td>
			</tr>
			<tr></tr>
			<tr>
				<td><label>Email:</label></td>
				<td><form:input path="email" required="required" /></td>
			</tr>
			<tr></tr>
			<%-- <tr> //commenting this field since to have a difference between thymeleaf and jsp
					<td><label>Mobile:</label></td>
					<td><form:input path="mobile" required="required" /></td>
				</tr> --%>
			<tr></tr>
			<tr>
				<td></td>
				<td><input type="submit" value="Submit" /></td>
			</tr>
		</table>
	</form:form>
</body>
</html>