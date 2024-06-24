<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script>
    function viewfunction()
    {
        document.getElementById("checkbalancediv").style.display='none';
        document.getElementById("withdraw").style.display='none';
    }
    function showcheckbalancediv()
    {
        document.getElementById("services").style.display='none';
        document.getElementById("checkbalancediv").style.display='inline';
    }
    function checkbalance()
    {
        document.checkbalanceform.action="checkbalance";
        document.checkbalanceform.submit();
        showbalance();
    }
    function showwithdrawdiv()
    {
        alert("gel");
        document.getElementById("services").style.display='none';
        document.getElementById("withdraw").style.display='inline';
    }
    function showdepositdiv()
    {
        
    }
    function showeditdetailsdiv()
    {
    
    }
</script>
</head>
<body onload="viewfunction()">
    <div id="services">
    <pre> 
        <input type="button" value="CHECK BALANCE" onclick="showcheckbalancediv()">

        <input type="button" value="WITHDRAW MONEY" onclick="showwithdrawdiv()">

        <input type="button" value="DEPOSIT MONEY" onclick="deposit()">

        <input type="button" value="EDIT DETAILS" onclick="editdetails()">
    </pre>
    </div>
 
    <form name="checkbalanceform" id="checkbalancediv" method="post">
        <input type="hidden" name="email" value="${email}" readonly>
        <input type="hidden" name="password" value="${password}" readonly>
        Please enter the account number: <input type="number" name="accno" value="78731">
        <input type="button" value="Check balance" onclick="checkbalance()">
    </form>
    
    <form action="checkaccno" name="withdraw" id="withdraw">
        Hello
        <input type="hidden" name="accno" value="${accno}" readonly>
        <input type="hidden" name="email" value="${email}" readonly>
        <input type="hidden" name="password" value="${password}" readonly>
        Please enter the account number: <input type="number" name="accno" value="78731">
        <input type="submit" value="Confirm">
        bitches
    </form>
    
</body>
</html>