<%-- 
    Document   : Loginform
    Created on : 01-Apr-2022, 3:14:08 pm
    Author     : 91805
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
    </head>
    <body>
        <form action="validation.jsp" method="post">
            <input type="text" name="uname" placeholder="enter UserName" /><br>
            <input type="password" name="pass" placeholder="enter Passowrd" /><br>
            <input type="submit" name="btn_login" value="Login">
        </form>
    </body>
</html>




