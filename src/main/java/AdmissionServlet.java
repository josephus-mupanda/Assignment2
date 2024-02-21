import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;
import javax.mail.*;
import javax.mail.internet.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import org.apache.commons.fileupload.*;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

@WebServlet("/AdmissionServlet")
public class AdmissionServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();

        // Check if the user is logged in
        if (session.getAttribute("email") != null) {
            // Process admission form submission
            boolean isMultipart = ServletFileUpload.isMultipartContent(request);

            if (isMultipart) {
                try {
                    FileItemFactory factory = new DiskFileItemFactory();
                    ServletFileUpload upload = new ServletFileUpload(factory);
                    java.util.List<FileItem> items = upload.parseRequest(request);

                    for (FileItem item : items) {
                        if (item.isFormField()) {
                            // Process regular form fields (if any)
                            String fieldName = item.getFieldName();
                            String value = item.getString();
                            // Handle form fields as needed
                        } else {
                            // Process file uploads
                            String fieldName = item.getFieldName();
                            String fileName = item.getName();
                            InputStream fileContent = item.getInputStream();

                            if ("passport".equals(fieldName)) {
                                // Process passport picture upload (save to database or storage)
                                // ...

                            } else if ("certificates".equals(fieldName)) {
                                // Process certificates upload (save to database or storage)
                                // ...

                            }
                        }
                    }

                    // Send confirmation email using JavaMail API
                    sendConfirmationEmail(session.getAttribute("email").toString());

                    // Redirect to admission page with a success message
                    response.sendRedirect("admission.jsp?success=true");
                } catch (FileUploadException e) {
                    // Handle file upload exception
                    e.printStackTrace();
                    response.sendRedirect("admission.jsp?error=true");
                }
            } else {
                // Redirect to admission page with an error message
                response.sendRedirect("admission.jsp?error=true");
            }
        } else {
            // Redirect to login page if the user is not logged in
            response.sendRedirect("signin.jsp");
        }
    }

    private void sendConfirmationEmail(String recipientEmail) {
        // Use JavaMail API to send confirmation email
        // Replace these placeholders with your email configuration
        String host = "your_mail_server";
        String port = "your_mail_port";
        String username = "your_username";
        String password = "your_password";

        Properties properties = new Properties();
        properties.put("mail.smtp.host", host);
        properties.put("mail.smtp.port", port);
        properties.put("mail.smtp.auth", "true");
        properties.put("mail.smtp.starttls.enable", "true");

        Session session = Session.getInstance(properties, new javax.mail.Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(username, password);
            }
        });

        try {
            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress(username));
            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(recipientEmail));
            message.setSubject("Admission Confirmation");
            message.setText("Dear student,\n\nYour admission request has been submitted successfully.");

            Transport.send(message);
        } catch (MessagingException e) {
            e.printStackTrace();
            // Handle email sending exception
        }
    }
}
