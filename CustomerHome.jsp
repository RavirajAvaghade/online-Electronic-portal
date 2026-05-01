<%@page import="com.pack.CustomerBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Customer Home</title>

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
    background:linear-gradient(135deg,#1e3c72,#2a5298);
}

.container{
    width:420px;
    padding:50px;
    background:white;
    border-radius:20px;
    text-align:center;
    box-shadow:0 25px 50px rgba(0,0,0,0.3);
    animation:fadeIn 1s ease;
}

@keyframes fadeIn{
    from{opacity:0; transform:translateY(30px);}
    to{opacity:1; transform:translateY(0);}
}

h2{
    margin-bottom:30px;
    color:#2a5298;
}

a{
    display:block;
    text-decoration:none;
    padding:12px;
    margin:15px 0;
    border-radius:30px;
    font-weight:600;
    transition:0.3s;
}

.view{
    background:linear-gradient(45deg,#38ef7d,#11998e);
    color:white;
}

.logout{
    background:linear-gradient(45deg,#ff416c,#ff4b2b);
    color:white;
}

a:hover{
    transform:translateY(-3px);
    box-shadow:0 10px 20px rgba(0,0,0,0.3);
}

</style>
</head>

<body>

<div class="container">

<h2>👋 Welcome Raviraj</h2>

<a href="viewcust" class="view">🛒 View Products</a>
<a href="logout" class="logout">🚪 Logout</a>

</div>

</body>
</html>