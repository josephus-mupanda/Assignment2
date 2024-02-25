<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Admission App - Login Form</title>

<link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">
<link rel="stylesheet" href="css/style.css">

</head>

<body>
	<div class="main">

		<!-- Sing in  Form -->
		<section class="sign-in">
			<div class="container">
				<div class="signin-content">
					<div class="signin-image">
						<figure>
							<img src="images/login.png" alt="sing up image">
						</figure>
						<a href="registration.jsp" class="signup-image-link">Sign up here...</a>
					</div>

					<div class="signin-form">
						<h2 class="form-title">Login Here</h2>
						
						<form id="login-form" action="" method="POST" onsubmit="return validateForm()" class="register-form" >
						
							<div class="form-group">
								<label for="email"><i class="zmdi zmdi-email"></i></label> 
								<input
									type="email" name="email" id="email" placeholder="Your Email" />
							</div>
							<p id="email-error" class="error-message" style="color: red;"></p>
							
							<div class="form-group">
								<label for="password"><i class="zmdi zmdi-lock"></i></label> <input
									type="password" name="password" id="password"
									placeholder="Password" />
							</div>
							
							<p id="password-error" class="error-message" style="color: red;"></p>
        					<p id="error-message" style="color: red;"></p>
        					<p id="form-error" class="error-message" style="color: red;"></p>
         
							<div class="form-group">
								<input type="checkbox" name="remember-me" id="remember-me"
									class="agree-term" /> <label for="remember-me"
									class="label-agree-term"><span><span></span></span>Remember
									me</label>
							</div>
							
							<div class="form-group form-button">
								<input type="submit" name="signin" id="signin"
									class="form-submit" value="Log in" />
							</div>
							
						</form>
						
						<div class="social-login">
							<span class="social-label">Or login with</span>
							<ul class="socials">
								<li><a href="#"><i
										class="display-flex-center zmdi zmdi-facebook"></i></a></li>
								<li><a href="#"><i
										class="display-flex-center zmdi zmdi-twitter"></i></a></li>
								<li><a href="#"><i
										class="display-flex-center zmdi zmdi-google"></i></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</section>

	</div>

<%
    
        String loginEmail = request.getParameter("email");
        String loginPassword = request.getParameter("password");
        String signUpEmail = (String) session.getAttribute("email");
        String signUpPassword = (String) session.getAttribute("password");
        
        // Check if the entered credentials match the stored credentials
        if (loginEmail != null && loginPassword != null && signUpEmail != null && signUpPassword != null) {
            if (loginEmail.equals(signUpEmail) && loginPassword.equals(signUpPassword)) {
                // Valid credentials, set loggedIn attribute to true in session
                session.setAttribute("loggedIn", true);
                // Successful login, redirect to the dashboard or home page
                response.sendRedirect("index.jsp");
                return; // Stop further execution to prevent displaying error message
            } else {
            	 // Invalid credentials, set error message in the form
                out.println("<script>");
                out.println("document.getElementById('form-error').innerText = 'Invalid email or password';");
                out.println("</script>");
                return; 
            }
        }
    
%>
<script>
    function validateForm() {
        var email = document.getElementById("email").value;
        var password = document.getElementById("password").value;
        var emailError = document.getElementById("email-error");
        var passwordError = document.getElementById("password-error");

        var emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;

        // Reset error messages
        emailError.innerText = "";
        passwordError.innerText = "";

        if (email.trim() === '') {
            emailError.innerText = "Email is required.";
            return false;
        }

        // Validate email
        if (!email.match(emailPattern)) {
            emailError.innerText = "Please enter a valid email address.";
            return false;
        }

        // Validate password
        if (password.trim() === '') {
            passwordError.innerText = "Password is required.";
            return false;
        }

        return true;
    }
    
    function getErrorMessage() {
        var urlParams = new URLSearchParams(window.location.search);
        var error = urlParams.get('error');
        return error;
    }

    // Function to display error message on the form

	 function displayErrorMessage() {
	     var errorMessage = getErrorMessage();
	     if (errorMessage) {
	         document.getElementById('form-error').innerText = errorMessage;
	     }
	 }
	
	 // Call the displayErrorMessage function on page load
	 window.onload = function() {
	     displayErrorMessage();
	 };
 </script>


	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="js/main.js"></script>
</body>
</html>