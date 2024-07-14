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
		if(document.getElementById("balance").value-document.getElementById("amount").value<=2000)
		{
			document.getElementById("errormsg").style.display='inline';
			document.getElementById("withdrawbutton").disabled=true;
		}
		
		else
		{
			document.getElementById("errormsg").style.display='none';
			document.getElementById("withdrawbutton").disabled=false;
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
		<form action="withdrawmoney" method="post">
			Current Balance: <input type="number" name="balance" id="balance" value="${p.balance}" readonly>
			
			Enter withdrawal amount: <input type="number" id="amount" name="amount" oninput="checkamount()">
			<span style="color:red" id="errormsg">*Balance cannot be less than 2000 after withdrawal</span>
			<input type="submit" id="withdrawbutton" value="WITHDRAW">
			
			<input type="hidden" name="pid" value="${p.pid}" readonly>
		</form>
	</pre>
</body>
</html>