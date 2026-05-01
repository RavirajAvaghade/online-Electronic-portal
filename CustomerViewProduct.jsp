<%@page import="java.util.*"%>
<%@page import="com.pack.ProductBean"%>
<%@page import="com.pack.CustomerBean"%>
<%@ page contentType="text/html;charset=UTF-8" %>

<%
CustomerBean cb =
(CustomerBean)session.getAttribute("cbean");

if(cb == null){
    response.sendRedirect("CustomerLogin.jsp");
    return;
}

ArrayList<ProductBean> al =
(ArrayList<ProductBean>)request.getAttribute("ProductList");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Available Products</title>

<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600;700&display=swap" rel="stylesheet">

<style>

*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:'Poppins',sans-serif;
}

body{
    min-height:100vh;
    background:url('https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a') no-repeat center center/cover;
    padding:40px;
}

.overlay{
    position:fixed;
    width:100%;
    height:100%;
    background:rgba(0,0,0,0.6);
    top:0;
    left:0;
    z-index:-1;
}

h2{
    text-align:center;
    color:white;
    margin-bottom:40px;
}

.container{
    display:grid;
    grid-template-columns:repeat(auto-fit,minmax(250px,1fr));
    gap:30px;
}

.card{
    background:rgba(255,255,255,0.15);
    backdrop-filter:blur(15px);
    border-radius:20px;
    padding:25px;
    color:white;
    box-shadow:0 20px 40px rgba(0,0,0,0.5);
    transition:0.3s;
}

.card:hover{
    transform:translateY(-8px);
}

.card h3{
    margin-bottom:10px;
}

.price{
    font-size:18px;
    font-weight:600;
    margin:10px 0;
    color:#00ffcc;
}

.stock{
    font-size:14px;
    margin-bottom:15px;
}

button{
    padding:10px 20px;
    border:none;
    border-radius:25px;
    background:linear-gradient(45deg,#00c6ff,#0072ff);
    color:white;
    cursor:pointer;
    transition:0.3s;
}

button:hover{
    transform:translateY(-3px);
    box-shadow:0 10px 20px rgba(0,0,0,0.4);
}

.back{
    text-align:center;
    margin-top:40px;
}

.back a{
    text-decoration:none;
    padding:10px 20px;
    background:white;
    border-radius:20px;
    color:black;
}

</style>

</head>

<body>

<div class="overlay"></div>

<h2>🛒 Available Products</h2>

<div class="container">

<%
if(al != null && al.size() > 0){
for(ProductBean pb : al){
%>

<div class="card">
    <h3><%= pb.getPname() %></h3>
    <p>Company: <%= pb.getPcompany() %></p>
    <p class="price">₹ <%= pb.getPprice() %></p>
    <p class="stock">Available: <%= pb.getPquty() %></p>

    <form action="buy" method="get">
        <input type="hidden" name="pcode"
               value="<%= pb.getPcode() %>">
        <button type="submit">Buy Now</button>
    </form>
</div>

<%
}
}else{
%>
<p style="color:white;text-align:center;">
No Products Available
</p>
<%
}
%>

</div>

<div class="back">
<a href="CustomerHome.jsp">⬅ Back to Home</a>
</div>

</body>
</html>