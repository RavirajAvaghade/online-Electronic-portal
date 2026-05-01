<%@page import="com.pack.AdminBean" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Home</title>
</head>
<body>
<center>
<h1>

<%
AdminBean abean = (AdminBean)session.getAttribute("abean");
String data = (String)request.getAttribute("msg");

if(abean != null){
    if(data != null){
        out.println(data + " Mr. " + abean.getA_FNAME() + "<br>");
    } else {
        out.println("Welcome Mr. " + abean.getA_FNAME() + "<br>");
    }
} else {
    response.sendRedirect("AdminLogin.html");
}
%>

<br>
<a href="AddProduct.jsp">Add product</a><br><br>
<a href="view1">View Products</a><br><br>
<a href="Logout">Logout</a>

</h1>
</center>
</body>
</html>