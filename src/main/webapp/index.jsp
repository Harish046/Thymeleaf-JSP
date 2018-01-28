<!-- @author Harish, https://github.com/Harish046, index.jsp -->
<html>
<head>
<title>Thymeleaf-Jsp</title>
<%@ page isELIgnored="false"%>
<style type="text/css">
body {
	background-color: #262626;
	font-family: sans-serif;
	color: #ffffff;
}

h2 {
	font-family: sans-serif;
	color: #ffffff;
}

a {
	color: #cc0000;
}

.wrapper {
	width: auto;
	margin: 0 auto;
}

.left {
	float: left;
}

.right {
	float: right;
}
</style>
</head>
<body>
	<br />
	<br />
	<br />
	<h2 align="center">Thymeleaf and Jsp</h2>
	<br />
	<br />
	<br />
	<div class="wrapper">
		<div class="left">
			Click here for Thymeleaf view&nbsp;&nbsp;<a
				href="${pageContext.request.contextPath}/thl/users">Go!</a>
		</div>
		<div class="right">
			Click here for Jsp view&nbsp;&nbsp;<a
				href="${pageContext.request.contextPath}/jsp/users">Go!</a>
		</div>
	</div>

</body>
</html>
