<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<script>
    function basicSection()
    {
        document.getElementById("basicsection").style.display='inline';
        document.getElementById("passwordsetup").style.display='none';
    }
    function nextSection()
    {
        document.getElementById("basicsection").style.display='none';
        document.getElementById("passwordsetup").style.display='inline';
    }
    function checkpassword()
    {
        var password1=document.getElementById("password1").value;
        var password2=document.getElementById("password2").value;
        if(document.getElementById("password1").value!==document.getElementById("password2").value)
        {
            document.getElementById("warning").innerHTML="*Password not matching";
        }
        else{
            document.getElementById("warning").innerHTML="";
            return;
        }
        
    }
</script>
<body>
    <pre>
        <div id="container">
            <form action="update" method="post">
                <div id="basicsection">
                    <h1>Register</h1><input type="hidden" name="id" value="${ah.id}">
                    <input type="hidden" name="email" value="${ah.email}">
                    <input type="hidden" name="id" value="${ah.id}">
                    <input type="hidden" name="acctype" value="${ah.acctype}">
                    <input type="hidden" name="password" value="${ah.password}">
                    <input type="hidden" name="balance" value="${ah.balance}">
                    <input type="hidden" name="accno" value="${ah.accno}">
 
                    First name: <input type="text" name="fname" value="${ah.fname}">

                    Last name: <input type="text" name="lname" value="${ah.lname}">

                    Mobile number: <input type="tel" name="mobno" value="${ah.mobno}">

                    PAN number: <input type="text" name="pan" value="${ah.pan}">

                    Gender: <select name="gender" value="${ah.gender}">
                        <option value="Male" >Male</option>
                        <option value="Female" >Female</option>
                    </select>

                    Age: <input type="number" name="age" value="${ah.age}">

                    <!-- Select Card types: 
                    <c:forEach items="${data}" var="l">
                        <input type="checkbox" name="c" value="${l.cid}" id="${l.ctype}"><label for="${l.ctype}"> ${l.ctype}</label>
                    </c:forEach> -->
                    
                    <input id="btn" value="Next" type="submit" onclick="nextSection()">
            </form>
        </div>
        
    </pre>
</body>
</html>