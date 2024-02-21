<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Sign up Page</title>
</head>
<body>
    <h1>Sign up</h1>
    
    <form action="SignupServlet" method="post">
        Email: <input type="text" name="email"><br/><br/>
        Password: <input type="password" name="password">
        <input type="submit" value="Signup">
    </form>
</body>
</html>
