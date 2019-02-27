<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<html>
<head>
<title>Home</title>
</head>
<body>
Welcome to the Homepage

<p>
	User: <sec:authentication property="principal.username"/>
	Role(s): <sec:authentication property="principal.authorities"/>
</p>
<hr>
<form:form action="${pageContext.request.contextPath}/logout" method="POST">
<input type="submit" value="Logout"/>
</form:form>
</body>
</html>