<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SBC Bank Register</title>
<style>
    *{
    padding: 0px;
    margin: 0px;
    background-color:bisque;
    font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif
}
#container{
    display: flex; 
    align-items: center; 
    justify-content: center; 
    border-radius: 10px;  
}

#btn{
    width: 150px;
    height: 35px;
    border: 1px solid;
}
</style>
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
</head>
<body onload="basicSection()">
    <pre>
        <div id="container">
            <form action="register" method="post">
                <div id="basicsection">
                    <h1>Register</h1>

                    First name: <input type="text" name="fname">

                    Last name: <input type="text" name="lname">

                    Mobile number: <input type="tel" name="mobno">

                    PAN number: <input type="text" name="pan">

                    Gender: <select name="gender">
                        <option value="Male">Male</option>
                        <option value="Female">Female</option>
                    </select>

                    Age: <input type="number" name="age">

                    Account type: <input type="radio" name="acctype" value="saving account" id="saving"><label for="saving">Saving Account</label>  <input type="radio" name="acctype" value="current account" id="current"><label for="current">Current Account</label>  <input type="radio" name="acctype" value="premium account" id="premium"><label for="premium">Premium Account</label>

                    <!-- Select Card types: 
                    <c:forEach items="${data}" var="l">
                        <input type="checkbox" name="c" value="${l.cid}" id="${l.ctype}"><label for="${l.ctype}"> ${l.ctype}</label>
                    </c:forEach> -->
                    
                    <input id="btn" value="Next" type="button" onclick="nextSection()">
                </div>
                <div id="passwordsetup">
                    <pre>
                        Email: <input type="email" name="email">
                
                        Password: <input id="password1" type="password" name="password">
                        <span id="warning" style="color: red;"></span>
                        Confirm Password: <input id="password2" type="password" oninput="checkpassword()"> 

                        <input type="submit" value="REGISTER">
                    </pre>
                </div>
            </form>
        </div>
        
    </pre>
</body>
</html>