<%@ page language="java" contentType="text/html" %>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<title> pattern </title>
</head>
<body>
<%
	String row=request.getParameter("size");
	int r=Integer.parseInt(row);
	for(int i=1;i<=r;i++)
	{
		for(int j=1;j<=i;j++)
		{
			out.println(j+ " ");
		}
		out.println("<br><br>");
	}

%>
</body>
</html>