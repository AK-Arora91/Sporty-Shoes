<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sporty Shoes</title>
<style>
table,th,td {
	
	border:1px solid black;
	text-align:center;
}
</style>
</head>
<body style="background-color:aqua;">
<h2>Users Details</h2>
<br>

<form action=searchUser>
	<label for="search">Search User By Email :-</label>  <input type="email" name="email" id="search"/>
	<input type="submit" value="search"/>
</form><br><br>
<table style="width:100%">
	<tr>
		<th>Name</th>
		<th>Email</th>
		<th>Age</th>
		<th>Gender</th>
		<th>Address</th>
	</tr>
	
	<c:forEach var="user" items="${userList}">
	
		<tr>
			<td> ${user.userName} </td>
			<td> ${user.userEmail} </td>
			<td> ${user.userAge} </td>
			<td> ${user.userGender} </td>
			<td> ${user.userAddress} </td>
		</tr>
	
	</c:forEach>
			
</table>


</body>
</html>