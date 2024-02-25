<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admission Result</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
        margin: 0;
        padding: 0;
    }
    .container {
        max-width: 600px;
        margin: 50px auto;
        padding: 20px;
        background-color: #fff;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }
    h2 {
        text-align: center;
        margin-bottom: 20px;
    }
    p {
        margin-bottom: 10px;
    }
</style>
</head>
<body>
    <div class="container">
        <h2>Admission Result</h2>
        <p><%= session.getAttribute("message") %></p>
        <p>Please check your email  for the confirmation email.</p>
    </div>
</body>
</html>
