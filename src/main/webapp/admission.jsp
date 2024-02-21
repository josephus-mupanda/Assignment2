<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<head>
    <title>Student Admission</title>
</head>
<body>
    <h1>Student Admission Form</h1>
    
    <% if (session.getAttribute("email") != null) { %>
        <form action="AdmissionServlet" method="post" enctype="multipart/form-data">
            Passport Picture (.jpg or .png): <input type="file" name="passport">
            Certificates (PDF): <input type="file" name="certificates">
            <input type="submit" value="Submit Admission">
        </form>
    <% } else { %>
        <p>You must be logged in to access the admission form.</p>
        <a href="signin.jsp">Login</a>
    <% } %>
</body>
</html>
    