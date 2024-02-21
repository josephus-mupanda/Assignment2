<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Sign in Page</title>
</head>
<body>
    <h1>Sign in</h1>
    
    <form action="SigninServlet" method="post">
        Email: <input type="text" name="email"><br/><br/>
        Password: <input type="password" name="password">
        <input type="submit" value="Login">
    </form>
</body>
</html>
    