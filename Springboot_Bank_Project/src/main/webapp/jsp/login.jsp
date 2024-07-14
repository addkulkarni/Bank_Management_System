<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SBC Bank Login</title>
<style>
	div{
		border:1px solid;
		border-radius: 5px;
		width:50%;
		display:flex;
		align-content: center;
	}
</style>
</head>
<body>
	<pre>
	<div>
		<form action="login" method="post">
			Username: <input type="text" name="username" value="vk">
			
			Password: <input type="password" name="password" value="vk">
			
			<input type="submit" value="LOGIN">   <a href="openreg">REGISTER</a>
		</form>
	</div>
	</pre>
</body>
</html>