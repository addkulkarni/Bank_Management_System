<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<script>
	
</script>
<body>
	<pre>
		
		<span>Current Balance is: </span><span>${balance}</span>
		<form action="login" method="post">
			<input type="hidden" name="email" value="${email}" readonly>
			<input type="hidden" name="password" value="${password}" readonly>
			<input type="submit" value="BACK TO SERVICES">
		</form>
	</pre>
</body>
</html>