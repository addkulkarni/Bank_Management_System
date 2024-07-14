<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit the data</title>
</head>
<body>
	<pre>
		<form action="update" method="post">
			<input type="hidden" name="pid" value="${p.pid}">
			Name: <input type="text" name="pname" value="${p.pname}">
			
			Address: <input type="text" name="address" value="${p.address}">
			
			Age: <input type="number" name="age" value="${p.age}">
			
			Email: <input type="text" name="email" value="${p.email}">
			
			Gender: <select name="gender">
						<option>---Select---</option>
						<option value="Male" <c:if test="${p.gender eq 'Male'}">selected</c:if>>Male</option>
						<option value="Female" <c:if test="${p.gender eq 'Female'}">selected</c:if>>Female</option>
					</select>
					
			Date of birth: <input type="date" name="dob" value="<fmt:formatDate value='${p.dob}' pattern='yyyy-MM-dd'/>">
			
			Mobile number: <input type="tel" name="contact" value="${p.contact}">
			
			Username: <input type="text" name="username" value="${p.username}">
			
			Password: <input type="password" name="password" value="${p.password}">
			
			Balance: <input type="number" name="balance" value="${p.balance}" readonly>
			
			<input type="submit" value="UPDATE">
			
		</form>
	</pre>
</body>
</html>