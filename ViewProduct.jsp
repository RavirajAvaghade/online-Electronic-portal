<%@page import="java.util.*"%>
<%@page import="com.pack.ProductBean"%>
<%@page import="com.pack.AdminBean"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
AdminBean abean = (AdminBean)session.getAttribute("abean");
ArrayList<ProductBean> al =
(ArrayList<ProductBean>)session.getAttribute("productList");

if(abean == null){
    response.sendRedirect("AdminLogin.html");
    return;
}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Product Inventory</title>

<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600;700&display=swap" rel="stylesheet">

<style>

*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:'Poppins',sans-serif;
}

body{
    min-height:100vh;
    background:linear-gradient(135deg,#1f1c2c,#928dab);
    padding:50px;
}

.wrapper{
    max-width:1200px;
    margin:auto;
}

.header{
    display:flex;
    justify-content:space-between;
    align-items:center;
    margin-bottom:30px;
    color:white;
}

.dashboard-btn{
    text-decoration:none;
    padding:8px 18px;
    background:rgba(255,255,255,0.2);
    color:white;
    border-radius:30px;
    transition:0.3s;
}

.dashboard-btn:hover{
    background:rgba(255,255,255,0.4);
}

.grid{
    display:grid;
    grid-template-columns:repeat(auto-fill,minmax(250px,1fr));
    gap:25px;
}

.card{
    background:rgba(255,255,255,0.1);
    backdrop-filter:blur(10px);
    border-radius:20px;
    padding:20px;
    text-align:center;
    color:white;
    box-shadow:0 15px 30px rgba(0,0,0,0.5);
    transition:all 0.4s ease;
    border:1px solid transparent;
}

.card:hover{
    transform:translateY(-12px) scale(1.03);
    box-shadow:0 25px 50px rgba(0,0,0,0.7);
    border:1px solid rgba(255,255,255,0.3);
}

/* Image zoom effect */
.card img{
    width:120px;
    height:120px;
    object-fit:contain;
    margin-bottom:15px;
    transition:0.4s;
}

.card:hover img{
    transform:scale(1.15) rotate(3deg);
}
.card:hover{
    box-shadow:0 0 25px rgba(0,255,255,0.6);
}

.card img{
    width:120px;
    height:120px;
    object-fit:contain;
    margin-bottom:15px;
}

.price{
    color:#38ef7d;
    font-weight:600;
}

.qty{
    font-size:13px;
    opacity:0.8;
    margin-bottom:10px;
}

.action-btn{
    padding:6px 12px;
    border-radius:20px;
    text-decoration:none;
    font-size:13px;
    font-weight:600;
    margin:4px;
    display:inline-block;
    transition:0.3s;
}

.edit{
    background:#00c6ff;
    color:white;
}

.delete{
    background:#ff4b2b;
    color:white;
}

.action-btn:hover{
    transform:scale(1.05);
}

.empty{
    text-align:center;
    color:white;
    font-size:18px;
}

</style>
</head>

<body>

<div class="wrapper">

<div class="header">
    <h2>📦 Product Inventory</h2>
    <a href="AdminHome.jsp" class="dashboard-btn">← Dashboard</a>
</div>

<%
if(al == null || al.size() == 0){
%>
    <div class="empty">No Products Available</div>
<%
}else{
%>

<div class="grid">

<%
for(ProductBean pb : al){

String imgUrl = "images/default.png";

String name = pb.getPname().toLowerCase();

if(name.contains("fan")){
    imgUrl = "images/fan.png";   // ✅ fixed
}
else if(name.contains("mobile")){
    imgUrl = "images/mobile.png";
}
else if(name.contains("laptop")){
    imgUrl = "images/laptop.png";
}
else if(name.contains("keyboard")){
    imgUrl = "images/keyboard.png";
}
else if(name.contains("mouse")){
    imgUrl = "images/mouse.png";
}
else if(name.contains("smart watch")){
    imgUrl = "images/smart watch.png";
}
else if(name.contains("fridge")){
    imgUrl = "images/fridge.png";
}
else if(name.contains("headphone")){
    imgUrl = "images/head.png";
}
%>
<div class="card">

<img src="<%= imgUrl %>" alt="product">

<h3><%= pb.getPname() %></h3>
<p><%= pb.getPcompany() %></p>
<p class="price">₹ <%= pb.getPprice() %></p>
<p class="qty">Stock: <%= pb.getPquty() %></p>

<a href="edit?pcode=<%= pb.getPcode() %>" class="action-btn edit">Edit</a>
<a href="delete?pcode=<%= pb.getPcode() %>"
   class="action-btn delete"
   onclick="return confirm('Delete this product?')">
   Delete
</a>

</div>

<%
}
%>

</div>

<%
}
%>

</div>

</body>
</html>