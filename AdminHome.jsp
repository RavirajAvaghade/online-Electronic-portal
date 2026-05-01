<%@page import="com.pack.AdminBean" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Dashboard</title>

<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;600;700&display=swap" rel="stylesheet">

<style>

*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:'Montserrat',sans-serif;
}

body{
    display:flex;
    height:100vh;
    background:#f4f6f9;
}

/* Sidebar */
.sidebar{
    width:250px;
    background:linear-gradient(180deg,#141e30,#243b55);
    color:white;
    padding:30px 20px;
    display:flex;
    flex-direction:column;
    justify-content:space-between;
}

.sidebar h2{
    text-align:center;
    margin-bottom:40px;
    font-size:22px;
    letter-spacing:1px;
}

.nav a{
    display:block;
    text-decoration:none;
    color:white;
    padding:12px 15px;
    margin:12px 0;
    border-radius:8px;
    transition:0.3s;
}

.nav a:hover{
    background:rgba(255,255,255,0.2);
    transform:translateX(5px);
}

/* Main Content */
.main{
    flex:1;
    padding:40px;
}

.header{
    font-size:24px;
    font-weight:600;
    margin-bottom:30px;
}

.cards{
    display:flex;
    gap:25px;
}

.card{
    flex:1;
    padding:30px;
    border-radius:15px;
    color:white;
    box-shadow:0 15px 30px rgba(0,0,0,0.15);
    transition:0.3s;
}

.card:hover{
    transform:translateY(-5px);
}

.add{ background:linear-gradient(45deg,#00c6ff,#0072ff); }
.view{ background:linear-gradient(45deg,#11998e,#38ef7d); }
.logout{ background:linear-gradient(45deg,#ff416c,#ff4b2b); }

.footer{
    text-align:center;
    margin-top:50px;
    font-size:14px;
    color:#777;
}

</style>
</head>

<body>

<%
AdminBean abean = (AdminBean)session.getAttribute("abean");

if(abean == null){
    response.sendRedirect("AdminLogin.html");
    return;
}
%>

<div class="sidebar">
    <div>
        <h2>👑 Admin Panel</h2>
        <div class="nav">
            <a href="AddProduct.html">➕ Add Product</a>
            <a href="view1">📦 View Products</a>
            <a href="logout">🚪 Logout</a>
        </div>
    </div>
    <div style="font-size:12px;opacity:0.7;text-align:center;">
        Luxury Business Suite 🚀
    </div>
</div>

<div class="main">

<div class="header">
Welcome, <%= abean.getA_UNAME() %> 👋
</div>

<div class="cards">
    <div class="card add">
        <h3>Add Product</h3>
        <p>Insert new items into your store database.</p>
    </div>

    <div class="card view">
        <h3>View Products</h3>
        <p>Manage and monitor all available products.</p>
    </div>

    <div class="card logout">
        <h3>Logout</h3>
        <p>Securely exit from the admin session.</p>
    </div>
</div>

<div class="footer">
Developed by Raviraj | Premium Admin Dashboard 💼
</div>

</div>

</body>
</html>