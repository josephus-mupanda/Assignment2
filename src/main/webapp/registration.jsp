<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Admission App - Register Form</title>


<link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">

<link rel="stylesheet" href="css/style.css">
</head>

<body>

	<div class="main">

		<!-- Sign up form -->
		<section class="signup">
			<div class="container">
				<div class="signup-content">
					<div class="signup-form">
						<h2 class="form-title">Register Here</h2>
						
						<!-- <form id="register-form"  class="register-form" action="" method="POST" onsubmit="return validateForm()"> -->
						<form id="signup-form" class="register-form" action="" method="POST" onsubmit="return validateForm()">
							<!-- <div class="form-group">
							<!-- <div class="form-group">
								<label for="name"><i
									class="zmdi zmdi-account material-icons-name"></i></label> <input
									type="text" name="name" id="name" placeholder="Your Name" />
							</div> -->
							<div class="form-group">
								<label for="email"><i class="zmdi zmdi-email"></i></label> <input
									type="email" name="email" id="email" placeholder="Your Email" />
							</div> <p id="email-error" class="error-message" style="color: red;"></p>
							
							<div class="form-group">
								<label for="password"><i class="zmdi zmdi-lock"></i></label> <input
									type="password" name="password" id="password" placeholder="Password" />
							</div><p id="password-error" class="error-message" style="color: red;"></p>
							
							<div class="form-group">
								<label for="re-pass"><i class="zmdi zmdi-lock-outline"></i></label>
								<input type="password" name="confirmPassword" id="confirmPassword"
									placeholder="Confirm Password" />
							</div> <p id="confirmPassword-error" class="error-message" style="color: red;"></p>
							
							
							
							<div class="form-group">
								<input type="checkbox" name="agree-term" id="agree-term"
									class="agree-term" /> <label for="agree-term"
									class="label-agree-term"><span><span></span></span>I
									agree all statements in <a href="#" class="term-service">Terms
										of service</a></label>
							</div>
							<div class="form-group form-button">
								<input type="submit" name="signup" id="signup"
									class="form-submit" value="Register" />
							</div>
						</form>
						
						
					</div>
					<div class="signup-image">
						<figure>
							<img src="images/register.png" alt="sing up image">
						</figure>
						<a href="login.jsp" class="signup-image-link">I am already
							member</a>
					</div>
				</div>
			</div>
		</section>


	</div>
	
	<%
						    String email = request.getParameter("email");
						    String password = request.getParameter("password");
						
						
						    if (email != null && password != null) {
						      
						
						        // Store the user's email and password in session attributes
						        session.setAttribute("email", email);
						        session.setAttribute("password", password);
						        
						        String signUpEmail = (String) session.getAttribute("email");
						        String signUpPassword = (String) session.getAttribute("password");
						        
						        out.println("loginEmail: " + signUpEmail); // Debug
						        out.println("loginPassword: " + signUpPassword); // Debug
						
						        
						        // Redirect to the login page after sign-up
						        response.sendRedirect("login.jsp");
						    }
						%>
	<!-- JS -->
	<!-- <script src="vendor/jquery/jquery.min.js"></script>
	<script src="js/main.js"></script> -->
	
	<script>
    function validateForm() {
    	
        var email = document.getElementById("email").value;
        var password = document.getElementById("password").value;
        var confirmPassword = document.getElementById("confirmPassword").value;
        var emailError = document.getElementById("email-error");
        var passwordError = document.getElementById("password-error");
        var confirmPasswordError = document.getElementById("confirmPassword-error");

        var emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;

        // Reset error messages
        emailError.innerText = "";
        passwordError.innerText = "";
        confirmPasswordError.innerText = "";

        // Validate email
        if (email.trim() === '') {
            emailError.innerText = "Email is required.";
            return false;
        }
        if (!email.match(emailPattern)) {
            emailError.innerText = "Please enter a valid email address.";
            return false;
        }

        // Validate password
        if (password.trim() === '') {
            passwordError.innerText = "Password is required.";
            return false;
        }

        // Validate confirm password
        if (confirmPassword.trim() === '') {
            confirmPasswordError.innerText = "Please confirm your password.";
            return false;
        }

        if (password !== confirmPassword) {
            confirmPasswordError.innerText = "Password and confirm password do not match.";
            return false;
        }

        return true;
    }
</script>
	

</body>
</html>