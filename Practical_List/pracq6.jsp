<%@ page contentType="text/html" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<title> pattern </title>
</head>
<body>
<form action="pracq6.jsp" method="post">

<!-- Validating the input i.e whether the no. of rows field is empty or not and displaying the appropriate msg -->

<input type="hidden" name="submitted" value="true">			<!-- HIDDEN TYPE ELEMENT GET IS VALUE AFTER SUBMITING THE WEB PAGE -->
<c:choose>
	<c:when test="${param.submitted && empty param.u_name && empty param.paswrd}">
		<br>
		PLEASE DN'T LET ANY FIELD EMPTY
		<br><br><br>
	</c:when>
	
	
	<c:when test="${param.submitted && param.u_name  == 'Kunal' && param.paswrd == 'sindhwani'}">
		WELCOME <c:out value="${param.u_name}"/><br><br>
	</c:when>

	<c:when test="${param.submitted && (param.u_name  != 'Kunal' || param.paswrd != 'sindhwani')}">
		INVALID USER<br><br>
	</c:when>


</c:choose>

<input name="u_name" type="text" value=""> Enter Ur Name <br><br>
<input name="paswrd" type="password" value=""> Password <br><br>
<input type="submit" value="VALIDATE">
</form>
<br><br>
</body>
</html>