package com.josephus;

import java.io.IOException;
import java.util.Properties;
import javax.mail.*;
import javax.mail.internet.*;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
  

@WebServlet("/Admission")
public class Admission extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve form data
    	
        String firstName = request.getParameter("firstname");
        String lastName = request.getParameter("lastname");
        String email = (String) request.getSession().getAttribute("email");
        
        System.out.println("First Name: " + firstName);
        System.out.println("Last Name: " + lastName);
        System.out.println("Email: " + email);


        // G mail credentials
        final String username = "josephusmupanda48@gmail.com";
        final String password = "hrxp fjwe lyfe cnso";

        // Create email properties
        Properties props = new Properties();
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.port", "587");
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");

        // Create session
        Session mailSession = Session.getInstance(props, new Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(username, password);
            }
        });

        try {
            // Create message
            Message message = new MimeMessage(mailSession);
            message.setFrom(new InternetAddress(username));
            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(email));
            message.setSubject("Admission Submission Confirmation");
            
            message.setText("Thank you for submitting your admission request. We have received your application.\n\n"
                    + "Best regards,\n"
                    + "AUCA Registration");

            // Send message
            Transport.send(message);

            // Set a success message
            request.getSession().setAttribute("message", "Admission Submitted Successfully");
        } catch (MessagingException e) {
            // Set an error message
            request.getSession().setAttribute("message", "Error Sending Email. Please contact support.");

            // Log the exception
            e.printStackTrace();
        }

        // Redirect to result.jsp
        response.sendRedirect("result.jsp");
    }
}
