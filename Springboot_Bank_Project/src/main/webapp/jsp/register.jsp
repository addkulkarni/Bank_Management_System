<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<pre>
		<form action="savedata" method="post">
			Name: <input type="text" name="pname">
			
			Address: <input type="text" name="address">
			
			Age: <input type="number" name="age">
			
			Email: <input type="text" name="email" ><!-- pattern="^[a-zA-Z][a-zA-Z0-9]*@[a-zA-Z0-9]*[.[a-z]*]*$"> -->
			
			Gender: <select name="gender">
						<option>---Select---</option>
						<option value="Male">Male</option>
						<option value="Female">Female</option>
					</select>
			
			Date of birth: <input type="date" name="dob" >
			
			Mobile number: <input type="tel" name="contact" pattern="^[7-9]$">
			
			Username: <input type="text" name="username">
			
			Password: <input type="password" name="password">
			
			<input type="submit" value="REGISTER">
		</form>
	</pre>
</body>
</html>