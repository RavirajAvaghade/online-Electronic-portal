<%@ page contentType="text/html;charset=UTF-8" %>

<%
Double total = (Double)request.getAttribute("total");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Order Success</title>

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
    background:linear-gradient(135deg,#00c6ff,#0072ff);
    display:flex;
    justify-content:center;
    align-items:center;
}

.card{
    background:white;
    padding:50px;
    border-radius:25px;
    text-align:center;
    box-shadow:0 30px 60px rgba(0,0,0,0.4);
    animation:fadeIn 0.8s ease;
}

@keyframes fadeIn{
    from{opacity:0; transform:translateY(40px);}
    to{opacity:1; transform:translateY(0);}
}

h2{
    color:#28a745;
    margin-bottom:20px;
}

.total{
    font-size:20px;
    font-weight:600;
    margin-bottom:25px;
}

button{
    padding:12px 25px;
    border:none;
    border-radius:25px;
    background:#0072ff;
    color:white;
    cursor:pointer;
    margin:8px;
    transition:0.3s;
}

button:hover{
    transform:translateY(-3px);
}

</style>
</head>

<body>

<div class="card">

<h2>🎉 Order Placed Successfully!</h2>

<%
if(total != null){
%>
<div class="total">
Total Amount: ₹ <%= total %>
</div>
<%
}
%>

<a href="viewcust">
<button>Continue Shopping</button>
</a>

<a href="CustomerHome.jsp">
<button>Go Home</button>
</a>

</div>

</body>
</html>