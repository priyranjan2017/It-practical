<%@ page contentType="text/html" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<title> pattern </title>
</head>
<body id="bdy">
<form action="pracq7.jsp" method="post">

<!-- Validating the input i.e whether the no. of rows field is empty or not and change the background colour according to that -->


<input type="hidden" name="submitted" value="true">			<!-- HIDDEN TYPE ELEMENT GET IS VALUE AFTER SUBMITING THE WEB PAGE -->

<c:choose>
	<c:when test="${param.submitted && empty param.u_name && empty param.age}">
		<br>
		PLEASE DN'T LET ANY FIELD EMPTY
		<br><br><br>
	</c:when>
	
	
	<c:when test="${param.submitted && param.age < 30}">
		AGE IS LESS THAN 30 SO UR PENALTY IS RED COLOUR<br><br>


		<script type="text/javascript">						<!-- Javascript included to have the functionality   -->
			var element=document.getElementById("bdy")			<!--  of changing the background colour -->
			element.style.backgroundColor="red"				
		</script>

	
	</c:when>

	<c:when test="${param.submitted && param.age > 30}">
		AGE IS MORE THAN 30 SO UR PENALTY IS GREEN COLOUR<br><br>


		<script type="text/javascript">
			var element=document.getElementById("bdy")
			element.style.backgroundColor="green"
		</script>


	</c:when>
	
	<c:when test="${param.submitted && param.age == 30}">
		CONGRATS UR AGE IS 30<br><br>
	</c:when>


</c:choose>

<input name="u_name" type="text" value=""> Enter Ur Name <br><br>
<input name="age" type="text" value=""> Age <br><br>
<input type="submit" value="VALIDATE">
</form>
<br><br>
</body>
</html>