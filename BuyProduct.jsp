<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.pack.ProductBean"%>

<%
ProductBean pb =
(ProductBean)request.getAttribute("Product");

if(pb == null){
%>
    <h3 style="color:red;">Product Not Found ❌</h3>
    <a href="viewcust">Back to Products</a>
<%
    return;
}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Buy Product</title>

<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600;700&display=swap" rel="stylesheet">

<style>

*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:'Poppins',sans-serif;
}

body{
    height:100vh;
    display:flex;
    justify-content:center;
    align-items:center;
    overflow:hidden;
    background:#000;
}

/* Electronics Background */
body::before{
    content:"";
    position:absolute;
    width:100%;
    height:100%;
    background:
    linear-gradient(rgba(0,0,0,0.7),rgba(0,0,0,0.7)),
    url("https://images.unsplash.com/photo-1510557880182-3c6c9a7e6e4d?q=80&w=2400&auto=format&fit=crop")
    no-repeat center center/cover;
    z-index:-1;
}

.card{
    width:420px;
    padding:40px;
    border-radius:20px;
    background:rgba(255,255,255,0.08);
    backdrop-filter:blur(18px);
    border:1px solid rgba(255,255,255,0.2);
    box-shadow:0 25px 50px rgba(0,0,0,0.6);
    color:white;
    text-align:center;
}

.card h2{
    margin-bottom:25px;
}

.price{
    font-size:20px;
    font-weight:600;
    color:#38ef7d;
}

.stock{
    margin-bottom:20px;
    font-size:14px;
    color:#ccc;
}

input{
    width:80%;
    padding:10px;
    border-radius:25px;
    border:none;
    outline:none;
    margin-top:10px;
}

button{
    width:100%;
    padding:12px;
    margin-top:20px;
    border:none;
    border-radius:25px;
    background:linear-gradient(45deg,#00c6ff,#0072ff);
    color:white;
    font-weight:600;
    cursor:pointer;
    transition:0.3s;
}

button:hover{
    transform:scale(1.05);
    box-shadow:0 0 20px rgba(0,123,255,0.8);
}

a{
    display:block;
    margin-top:20px;
    color:#ddd;
    text-decoration:none;
}

a:hover{
    color:white;
}

</style>
</head>

<body>

<div class="card">

<h2>🛒 Buy Product</h2>

<p><b><%= pb.getPname() %></b></p>
<p class="price">₹ <%= pb.getPprice() %></p>
<p class="stock">Available Stock: <%= pb.getPquty() %></p>

<form action="confirmBuy" method="post">

<input type="hidden" name="pcode"
value="<%= pb.getPcode() %>">

<input type="number" name="qty"
min="1"
max="<%= pb.getPquty() %>"
placeholder="Enter Quantity"
required>

<button type="submit">Confirm Order</button>

</form>

<a href="viewcust">⬅ Back to Products</a>

</div>

</body>
</html>