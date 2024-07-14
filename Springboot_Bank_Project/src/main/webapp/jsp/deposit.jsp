<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script>
	function checkamount()
	{
		if(document.getElementById("amount").value<=0)
		{
			document.getElementById("errormsg").style.display='inline';
			document.getElementById("depositbutton").disabled=true;
		}
		else
		{
			document.getElementById("errormsg").style.display='none';
			document.getElementById("depositbutton").disabled =false;
		}
	}
	
	function hidemsg()
	{
		document.getElementById("errormsg").style.display='none';
	}
</script>
</head>
<body onload="hidemsg()">
	<pre>
		<form action="depositmoney" method="post">
			Current Balance: <input type="number" name="balance" value="${p.balance}" readonly>
			
			Enter Deposit amount: <input type="number" id="amount" name="amount" oninput="checkamount()">
			<span id="errormsg" style="color:red">*Amount must be greater than 0</span>
			<input type="submit" id="depositbutton" value="DEPOSIT">
			
			<input type="hidden" name="pid" value="${p.pid}" readonly>
		</form>
	</pre>
</body>
</html>