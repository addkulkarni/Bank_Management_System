<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
    <h1>Invalid Account number</h1>
    <form action="login" method="post">
        <input type="hidden" name="email" value="${email}" readonly>
        <input type="hidden" name="password" value="${password}" readonly>
        <input type="submit" value="Go BACK">
    </form>
</body>
</html>