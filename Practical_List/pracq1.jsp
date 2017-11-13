<%@ page contentType="text/html" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<title> print 1 to 10 </title>
</head>
<body>
<c:forEach var="i" begin="1" end="10" step="1">
	<c:out value="${i}"/><br>
</c:forEach>
</body>
</html>