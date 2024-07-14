<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Successful</title>
<script>
	function opendeposit()
	{
		document.fn.action="deposit";
		document.fn.submit();
	}
	
	function openwithdraw()
	{
		document.fn.action="withdraw";
		document.fn.submit();
	}
	
	function openupdate()
	{
		document.fn.action="openupdate";
		document.fn.submit();
	}
	
</script>
</head>
<body>
	<pre>
		<form name="fn" method="post">
			<input type="hidden" name="pid" value="${p.pid}">
			Name: <input type="text" name="pname" value="${p.pname}" readonly style="border:none">
			
			Address: <input type="text" name="address" value="${p.address}" readonly style="border:none">
			
			Age: <input type="number" name="age" value="${p.age}" readonly style="border:none">
			
			Email: <input type="text" name="email" value="${p.email}" readonly style="border:none">
			
			Gender: <input type="text" name="gender" value="${p.gender}" readonly style="border:none">
			<%-- <select name="gender">
						<option>---Select---</option>
						<option value="Male" <c:if test="${p.gender eq 'Male'}">selected</c:if>>Male</option>
						<option value="Female" <c:if test="${p.gender eq 'Female'}">selected</c:if>>Female</option>
					</select> --%>
			Date of birth: <input type="date" name="dob" value="<fmt:formatDate value='${p.dob}' pattern='yyyy-MM-dd'/>" readonly style="border:none">
			
			Mobile number: <input type="tel" name="contact" value="${p.contact}" readonly style="border:none">
			
			Username: <input type="text" name="username" value="${p.username}" readonly style="border:none">
			
			Password: <input type="password" name="password" value="${p.password}" readonly style="border:none">
			
			Balance: <input type="number" name="balance" value="${p.balance}" readonly style="border:none">
			
			<input type="button" value="DEPOSIT" onclick="opendeposit()">  <input type="button" value="WITHDRAW" onclick="openwithdraw()">  <input type="button" value="UPDATE" onclick="openupdate()">   
		</form>
	</pre>
</body>
</html>