<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sporty Shoes</title>
<style>
div {
	border:10px solid black;
	color:blue;
	font-size:20px;
	height:100px;
	width:450px;
}
a{
	padding-left:50px;
}

</style>
</head>
<body style="background-color:rgb(255,252,211)">
<a href=Home.jsp style="color:black;text-decoration:none ;font-size:35px;font-weight:bold;">Sporty Shoes</a>
<br><br>

<div>
<br><br>
<a href="product" target="iframe">Products</a>
<a href="user" target="iframe">Users</a>
<a href="purchaseReport" target="iframe">Purchase Report</a>
</div><br><br>

<iframe src="product" name="iframe" style="height:400px;width:900px;"></iframe>
</body>
</html>