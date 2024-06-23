<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
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

#loginbtn{
    width: 150px;
    height: 35px;
    border: 1px solid;
}
</style>
<title>SBC Bank Login</title>
</head>
<body>
    <pre>
    <div id="container" >
        <form action="login" name="fn" method="post">
            <label for="email">Email: </label><input type="email" value="addkulkarni@gmail.com" name="email" placeholder="Enter email">

            <label for="password">Password: </label><input type="password" value="asd" name="password" placeholder="Enter password">

            <input id="loginbtn" type="submit" value="LOGIN">   <a href="openreg">REGISTER</a>
        </form>
    </div>
    </pre>
</body>
</html>