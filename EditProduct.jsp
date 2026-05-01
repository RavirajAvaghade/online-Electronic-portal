<%@page import="com.pack.AdminBean"%>
<%@page import="com.pack.ProductBean"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
AdminBean abean = (AdminBean)session.getAttribute("abean");
ProductBean pb = (ProductBean)request.getAttribute("p_bean");

if(abean == null){
    response.sendRedirect("AdminLogin.html");
    return;
}

if(pb == null){
    response.sendRedirect("view1");
    return;
}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Product</title>

<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600;700&display=swap" rel="stylesheet">

<style>
*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:'Poppins',sans-serif;
}

body{
    height:100vh;
    background: linear-gradient(-45deg,#667eea,#764ba2,#6dd5ed,#1cc88a);
    background-size:400% 400%;
    animation: gradientMove 10s ease infinite;
    display:flex;
    justify-content:center;
    align-items:center;
    padding:20px;
}

@keyframes gradientMove{
    0%{background-position:0% 50%;}
    50%{background-position:100% 50%;}
    100%{background-position:0% 50%;}
}

.card{
    width:100%;
    max-width:430px;
    padding:45px;
    border-radius:25px;
    backdrop-filter: blur(20px);
    background: rgba(255,255,255,0.12);
    border:1px solid rgba(255,255,255,0.25);
    box-shadow:0 30px 60px rgba(0,0,0,0.3);
    color:white;
}

.card h2{
    text-align:center;
    margin-bottom:35px;
    font-weight:600;
    letter-spacing:1px;
}

.input-box{
    margin-bottom:25px;
}

.input-box input{
    width:100%;
    padding:14px 15px;
    border-radius:35px;
    border:none;
    outline:none;
    background:rgba(255,255,255,0.18);
    color:white;
    font-size:14px;
}

.readonly{
    opacity:0.7;
    cursor:not-allowed;
}

button{
    width:100%;
    padding:14px;
    border:none;
    border-radius:35px;
    background: linear-gradient(45deg,#00c6ff,#0072ff);
    color:white;
    font-size:16px;
    font-weight:600;
    cursor:pointer;
    letter-spacing:1px;
}

.back{
    margin-top:25px;
    text-align:center;
}

.back a{
    text-decoration:none;
    color:white;
    font-size:14px;
}

.footer{
    margin-top:20px;
    text-align:center;
    font-size:12px;
    opacity:0.8;
}
</style>
</head>

<body>

<div class="card">

<h2>Update Product</h2>

<form action="<%= request.getContextPath() %>/update" method="post">

<div class="input-box">
<input type="text" value="<%= pb.getPcode() %>" readonly class="readonly">
</div>

<div class="input-box">
<input type="text" name="pprice"
value="<%= pb.getPprice() %>" required>
</div>

<div class="input-box">
<input type="text" name="pqty"
value="<%= pb.getPquty() %>" required>
</div>

<input type="hidden" name="pcode"
value="<%= pb.getPcode() %>">

<button type="submit">Update Product</button>

</form>

<div class="back">
<a href="view1">Back to Product List</a>
</div>

<div class="footer">
Admin Panel | Developed by Raviraj
</div>

</div>

</body>
</html>