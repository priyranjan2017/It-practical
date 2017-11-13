<%@ taglib uri="http://java.sun.com/jsp/jstl/core" 
   prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" 
   prefix="fn" %>
<HTML>
<HEAD>
<TITLE>Even-Odd</TITLE>
</HEAD>
<BODY>
<FORM action="Q5.jsp" method="post">
Enter Text:: <INPUT type="text" value="" name="t1"/><BR>
Select:: <BR>
Even: <INPUT type="Radio" value="true" name="r1"/><BR>
Odd: <INPUT type="Radio" value="true" name="r2"/><BR>
<INPUT type="submit" value="SUBMIT"/>
<c:set var="str1" value="${param.t1}"/>
<br>YOU ENTERED::<br>
<c:out value="${param.t1}"/>
<br>
<c:set var="t" value="0"/>
<c:if test="${param.r1 && param.r2}">
  <h2>KINDLY CHOOSE ONLY ONE OPTION...</h2><br>
</c:if>
<c:if test="${param.r2}">
VOWEL(s) CHECKING AT ODD PLACES OF A WORD::<br>
<c:forEach var="i" begin="0" end="${(fn:length(param.t1))-1}" step="1">
<c:if test="${i%2==0}">
<c:set var="str" value="${fn:substring(str1,i,i+1)}"/>
<c:choose>
<c:when test="${(fn:containsIgnoreCase(str,'a')) || (fn:containsIgnoreCase(str,'e')) || (fn:containsIgnoreCase(str,'i')) || (fn:containsIgnoreCase(str,'o')) || (fn:containsIgnoreCase(str,'u'))}">

</c:when>
<c:otherwise>
   <c:set var="t" value="${t+1}"/>
</c:otherwise>
</c:choose>

</c:if>
</c:forEach>
<c:if test="${t==0}">
    YOU WIN !!
</c:if>
<c:if test="${t!=0}">
    YOU LOSE !!
</c:if>
</c:if>
<c:if test="${param.r1}">
VOWEL(s) CHECKING AT EVEN PLACES OF A WORD::<br>
<c:forEach var="i" begin="0" end="${(fn:length(param.t1))-1}" step="1">
<c:if test="${i%2!=0}">
<c:set var="str" value="${fn:substring(str1,i,i+1)}"/>
<c:choose>
<c:when test="${(fn:containsIgnoreCase(str,'a')) || (fn:containsIgnoreCase(str,'e')) || (fn:containsIgnoreCase(str,'i')) || (fn:containsIgnoreCase(str,'o')) || (fn:containsIgnoreCase(str,'u'))}">

</c:when>
<c:otherwise>
   <c:set var="t" value="${t+1}"/>
</c:otherwise>
</c:choose>

</c:if>
</c:forEach>
<c:if test="${t==0}">
    YOU WIN !!
</c:if>
<c:if test="${t!=0}">
    YOU LOSE !!
</c:if>
</c:if>
</FORM>
</BODY>
</HTML>