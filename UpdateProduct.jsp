<%@page import="com.pack.AdminBean" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<center>
<h1>

<%
AdminBean abean = (AdminBean)session.getAttribute("abean");
String data=(String)request.getAttribute("msg");
  out.println("Hello"+abean.getA_UNAME()+"<br><br>");
  out.println(data+"<br><br>");

%>
<a href="AddProduct.html" >Add Product</a>
<a href="view1" >View Products</a>
<a href="logout.jsp" >Logout</a>



</h1>

</center>
</body>
</html>