<!DOCTYPE html>
<html lang="en">
<head>

<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Admission App</title>
<style>
  
    .container {
        border-radius: 2px;
        box-shadow: 0 0 2px rgba(0, 0, 0, 0.1);
    }
    h2 {
        text-align: center;
        margin-bottom: 20px;
    }
    label {
        display: block;
        margin-bottom: 8px;
    }
    input[type="text"],
    input[type="file"] {
        width: calc(100% - 20px);
        padding: 10px;
        margin-bottom: 20px;
        border: 1px solid #ccc;
        border-radius: 4px;
        box-sizing: border-box;
    }
    input[type="submit"] {
        background-color: #0057ff;
        color: white;
        padding: 12px 20px;
        border: none;
        border-radius: 4px;
        cursor: pointer;
        width: 100%;
    }
    input[type="submit"]:hover {
        background-color: rgba(0,87,255, 0.6);
    }
    .error-message {
        color: red;
        margin-top: 5px;
    }
  
</style>

<!-- Favicon-->
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<!-- Font Awesome icons (free version)-->
<script src="https://use.fontawesome.com/releases/v5.15.4/js/all.js" crossorigin="anonymous"></script>
<!-- Google fonts-->
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />
<link
	href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="css/index-styles.css" rel="stylesheet" />

</head>


<body id="page-top">
	<!-- Navigation-->
	<nav
		class="navbar navbar-expand-lg bg-secondary text-uppercase fixed-top"
		id="mainNav">
		<div class="container">
			<a class="navbar-brand" href="#page-top">AUCA</a>
			<button
				class="navbar-toggler text-uppercase font-weight-bold bg-primary text-white rounded"
				type="button" data-bs-toggle="collapse"
				data-bs-target="#navbarResponsive" aria-controls="navbarResponsive"
				aria-expanded="false" aria-label="Toggle navigation">
				Menu <i class="fas fa-bars"></i>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ms-auto">				
					<li class="nav-item mx-0 mx-lg-1"><a
						class="nav-link py-3 px-0 px-lg-3 rounded" href="#contact">Admission</a></li>
						
					<li class="nav-item mx-0 mx-lg-1"><a
						class="nav-link py-3 px-0 px-lg-3 rounded" href="#about">About us </a></li>
					
					<li class="nav-item mx-0 mx-lg-1"><a
						class="nav-link py-3 px-0 px-lg-3 rounded" href="" style="text-transform: lowercase "><%= session.getAttribute("email") %></a></li>			
				</ul>
			</div>
		</div>
	</nav>
	<!-- Masthead-->
	<header class="masthead bg-primary text-white text-center">
		<div class="container d-flex align-items-center flex-column">
			<!-- Masthead Avatar Image-->
			<img class="masthead-avatar mb-5" src="assets/img/welcome.png"
				alt="..." />
			<!-- Masthead Heading-->
			<h1 class="masthead-heading text-uppercase mb-0">Assignment Number 2</h1>
			<!-- Icon Divider-->
			<div class="divider-custom divider-light">
				<div class="divider-custom-line"></div>
				<div class="divider-custom-icon">
					<i class="fas fa-star"></i>
				</div>
				<div class="divider-custom-line"></div>
			</div>
			<!-- Masthead Subheading-->
			<p class="masthead-subheading font-weight-light mb-0">Done by Josephus Mupanda (24247)</p>
		</div>
	</header>
	
	<!-- Contact Section-->
	<section class="page-section" id="contact">
		<div class="container">
			<!-- Contact Section Heading-->
			<h2
				class="page-section-heading text-center text-uppercase text-secondary mb-0">
				Admission Form</h2>
			<!-- Icon Divider-->
			<div class="divider-custom">
				<div class="divider-custom-line"></div>
				<div class="divider-custom-icon">
					<i class="fas fa-star"></i>
				</div>
				<div class="divider-custom-line"></div>
			</div>
			<!-- Contact Section Form-->
			<div class="row justify-content-center">
				<div class="col-lg-8 col-xl-7">
				
				<form action="Admission" method="POST" enctype="multipart/form-data">
			        <label for="firstname">First Name</label>
			        <input type="text" id="firstname" name="firstname" required>
			
			        <label for="lastname">Last Name</label>
			        <input type="text" id="lastname" name="lastname" required>
			
			        <label for="passport">Passport Picture (JPG or PNG)</label>
			        <input type="file" id="passport" name="passport" accept="image/jpeg, image/png" required>
			
			        <label for="certificate">Certificate (PDF)</label>
			        <input type="file" id="certificate" name="certificate" accept="application/pdf" required>
			
			        <input  class="btn btn-primary btn-xl disabled" id="submitButton" type="submit" value="Submit Admission">
			        <div id="google_translate_element"></div>
			    </form>
						    
				</div>
			</div>
		</div>
	</section>
	
	<!-- About Section-->
	<section class="page-section bg-primary text-white mb-0" id="about">
		<div class="container">
			<!-- About Section Heading-->
			<h2
				class="page-section-heading text-center text-uppercase text-white">About</h2>
			<!-- Icon Divider-->
			<div class="divider-custom divider-light">
				<div class="divider-custom-line"></div>
				<div class="divider-custom-icon">
					<i class="fas fa-star"></i>
				</div>
				<div class="divider-custom-line"></div>
			</div>
			<!-- About Section Content-->
			<div class="row">
				<div class="col-lg-4 ms-auto">
					<p class="lead">29th Graduation
Dear AUCA Graduands,The Adventist University of Central Africa is pleased to inform you that the 29th Graduation ceremony is scheduled from 10th to 12th November 2023. All graduands are requested to make a formal application for graduation, and fill in the form below with requested details:.</p>
				</div>
				<div class="col-lg-4 me-auto">
					<p class="lead"> ACADEMIC YEAR 2023-2024: SEMESTER TWO
We welcome all students to the January intake (Semester two of the academic year 2023/2024) at Adventist University of Central Africa. Classes start on 21st January 2024. The university calendar for the academic year 2023-2024 is accessible </p>
				</div>
			</div>
			<!-- About Section Button-->
			<div class="text-center mt-4">
				<a class="btn btn-xl btn-outline-light"
					href=""> <i class="fas fa-download me-2"></i> See more
				</a>
			</div>
		</div>
	</section>
	
	<!-- Footer-->
	<footer class="footer text-center">
		<div class="container">
			<div class="row">
				<!-- Footer Location-->
				<div class="col-lg-4 mb-5 mb-lg-0">
					<h4 class="text-uppercase mb-4">Location</h4>
					<p class="lead mb-0">
						PO Box 2461 Gishushu campus ,<br /> Kigali City , Rwanda 
					</p>
				</div>
				<!-- Footer Social Icons-->
				<div class="col-lg-4 mb-5 mb-lg-0">
					<h4 class="text-uppercase mb-4">Follow us on</h4>
					<a class="btn btn-outline-light btn-social mx-1" href="#!">
					    <i class="fab fa-fw fa-facebook-f"></i>
					</a> 
					<a class="btn btn-outline-light btn-social mx-1" href="#!">
						<i class="fab fa-fw fa-twitter"></i>
					</a> 
					<a  class="btn btn-outline-light btn-social mx-1" href="#!">
						<i class="fab fa-fw fa-linkedin-in"></i>
					</a> 
					<a  class="btn btn-outline-light btn-social mx-1" href="#!">
						<i class="fab fa-fw fa-youtube"></i>
					</a>
				</div>
				<!-- Footer About Text-->
				<div class="col-lg-4">
					<h4 class="text-uppercase mb-4">About AUCA</h4>
					<p class="lead mb-0">
						Adventist University of Central Africa
						<a href="https://auca.ac.rw/">see more</a> .
					</p>
				</div>
			</div>
		</div>
	</footer>
	<!-- Copyright Section-->
	<div class="copyright py-4 text-center text-white">
		<div class="container">
			<small>Copyright &copy;2024 Adventist University of Central Africa.All Rights Reserved</small>
		</div>
	</div>
	
<%
    // Logic to check if the user is logged in
    HttpSession sessionCheck = request.getSession(false);
    Boolean loggedIn = (sessionCheck  != null && (Boolean) sessionCheck.getAttribute("loggedIn") == Boolean.TRUE);

    if (!loggedIn) {
        // User is not logged in, redirect to the login page
        response.sendRedirect("login.jsp");
    }
%>


	<!-- Bootstrap core JS-->
	<!-- <script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
	<script src="js/scripts.js"></script>
	<script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>  -->
</body>
</html>
