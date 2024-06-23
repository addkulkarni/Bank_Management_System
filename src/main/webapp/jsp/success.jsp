<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<pre>
		<table border="2">
            <tr>
                <th>Account number</th>
                <th>First name</th>
                <th>Last name</th>
                <th>Mobile number</th>
                <th>PAN number</th>
                <th>Email</th>
                <th>Gender</th>
                <th>Age</th>
                <th>Account type</th>
                <th>Action</th>
            </tr>
            <c:forEach items="${data}" var="l">
            	<tr>
                    <td>${l.accno}</td>
                    <td>${l.fname}</td>
                    <td>${l.lname}</td>
                    <td>${l.mobno}</td>
                    <td>${l.pan}</td>
                    <td>${l.email}</td>
                    <td>${l.gender}</td>
                    <td>${l.age}</td>
                    <td>${l.acctype}</td>
                    <td><a href="edit?id=${l.id}">EDIT</a> || <a href="delete?id=${l.id}">DELETE</a></td>
            	</tr>
            </c:forEach>
        </table>
	</pre>
</body>
</html>