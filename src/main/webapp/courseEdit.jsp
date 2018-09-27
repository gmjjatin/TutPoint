<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html">
<html>
	<head>

		<!-- Basic -->
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">	

		<title>TutPoint - Dashboard Edit</title>	

		<meta name="keywords" content="tuition" />
		<meta name="description" content="tution">
		<meta name="author" content="cv-jatinsharma.appspot.com">

		<!-- Favicon -->
		<link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon" />
		<link rel="apple-touch-icon" href="img/apple-touch-icon.png">

		<!-- Mobile Metas -->
		<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1.0, shrink-to-fit=no">

		<!-- Web Fonts  -->
		<link href="https://fonts.googleapis.com/css?family=Montserrat:300,400,500,600,700" rel="stylesheet" type="text/css">

		<!-- Vendor CSS -->
		<link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.min.css">
		<link rel="stylesheet" href="vendor/font-awesome/css/fontawesome-all.min.css">
		<link rel="stylesheet" href="vendor/animate/animate.min.css">
		<link rel="stylesheet" href="vendor/simple-line-icons/css/simple-line-icons.min.css">
		<link rel="stylesheet" href="vendor/owl.carousel/assets/owl.carousel.min.css">
		<link rel="stylesheet" href="vendor/owl.carousel/assets/owl.theme.default.min.css">
		<link rel="stylesheet" href="vendor/magnific-popup/magnific-popup.min.css">

		<!-- Theme CSS -->
		<link rel="stylesheet" href="css/theme.css">
		<link rel="stylesheet" href="css/theme-elements.css">
		<link rel="stylesheet" href="css/theme-blog.css">
		<link rel="stylesheet" href="css/theme-shop.css">

		<!-- Current Page CSS -->
		<link rel="stylesheet" href="vendor/rs-plugin/css/settings.css">
		<link rel="stylesheet" href="vendor/rs-plugin/css/layers.css">
		<link rel="stylesheet" href="vendor/rs-plugin/css/navigation.css">
		
		<!-- Demo CSS -->
		<link rel="stylesheet" href="css/demos/demo-education.css">

		<!-- Skin CSS -->
		<link rel="stylesheet" href="css/skins/skin-education.css"> 

		<!-- Theme Custom CSS -->
		<link rel="stylesheet" href="css/custom.css">

		<!-- Head Libs -->
		<script src="vendor/modernizr/modernizr.min.js"></script>

	</head>
	<body>

		<div class="body">
			<header id="header" class="header-semi-transparent custom-header-semi-transparent" data-plugin-options="{'stickyEnabled': true, 'stickyEnableOnBoxed': true, 'stickyEnableOnMobile': true, 'stickyStartAt': 49, 'stickySetTop': '-49px', 'stickyChangeLogo': false}">
				<div class="header-body">
					<div class="header-top header-top-style-3">
						<div class="container">
							<div class="header-row">
								</div>
						</div>
					</div>
					<div class="header-container container">
						<div class="header-row" >
							<div class="header-column">
								<div class="header-row">
									<div class="header-logo py-2">
										<a href="index.jsp">
											<img alt="TutPoint" width="160" height="48" src="img/demos/education/logo.png">
										</a>
									</div>
								</div>
							</div>
							<div class="header-column justify-content-end">
								<div class="header-row">
								
								
								
										<nav class="header-nav-top mr-0"  style="float:right;" >
											<ul class="nav">
												<%if(request.getAttribute("logout")!=null){
													%><li><span class="ws-nowrap" style="color: red"><i class="far fa-user"></i>Succesfully Logged-out</span></li>
												<%
												}
												 %>
												 <%if(("true").equals(request.getAttribute("recoveryMailSent"))){
													%><li><span class="ws-nowrap" style="color: green"><i class="far fa-user"></i>Recovery Mail sent succesfully </span></li>
												<%
												}
												 %>
												 <%if(session.getAttribute("uemail")!=null){
													%><li><a href="/logout"><span class="ws-nowrap"><i class="far fa-user"></i> Logout</span></a></li>
												<%
												}else{
												 %>
												<li><a href="#registernow"><span class="ws-nowrap"><i class="far fa-user"></i> Login</span></a></li>
												<li><a href="#registernow"><span class="ws-nowrap"><i class="fas fa-pencil-alt"></i> Register</span></a></li>
												<%} %>
											</ul>
										</nav>
									</div>
								
								
									<div class="header-nav header-nav-stripe">
										<div class="header-nav-main header-nav-main-effect-1 header-nav-main-sub-effect-1">
											<nav class="collapse">
												<ul class="nav" id="mainNav">
													<li>
														<a class="nav-link" href="index.jsp">
															Home
														</a>
													</li>
													<li class="dropdown">
													<a class="dropdown-item dropdown-toggle" href="demo-education-courses.html">
															Courses
														</a>
														<ul class="dropdown-menu">
															<li>
																<a class="dropdown-item nav-link" href="index.jsp">
																	School
																</a>
															</li>
														<li>
																<a class="dropdown-item nav-link" href="index.jsp">
																	Professional
																</a>
															</li>
														<li>
																<a class="dropdown-item nav-link" href="index.jsp">
																	Co-Curricular
																</a>
															</li>
															<li>
																<a class="dropdown-item nav-link" href="demo-education-courses.html">
																	View All
																</a>
															</li>
															</ul>
														
													<li>
														<a class="nav-link active" href="demo-education-instructors.html">
															Tutors
														</a>
													</li>
												</ul>
											</nav>
										</div>
										<button class="btn header-btn-collapse-nav" data-toggle="collapse" data-target=".header-nav-main nav">
											<i class="fas fa-bars"></i>
										</button>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</header>
			<div role="main" class="main">
				
				<section class="page-header background-color-quaternary parallax" data-plugin-parallax data-plugin-options="{'speed': 1.5}" data-image-src="img/demos/education/parallax/parallax-4.jpg">
					<div class="container">
						<div class="row align-items-center">
							<div class="col-lg-6">
								<h1 class="font-weight-bold">Edit Profile</h1>
							</div>
							<div class="col-lg-6">
								<ul class="breadcrumb pull-right">
									<li><a href="index.jsp">Home</a></li>
									<li><a href="dashboard.jsp">Dashboard</a></li>
									<li class="active text-color-light">Edit Profile</li>
								</ul>
							</div>
						</div>
					</div>
				</section>
				
				<div class="container" style="height:180px;">
				<div class="section background-color-tertiary border-0 my-0" style="padding-top:40px;"><form action="" method="post">
							<div class="row pt-1 pb-4 mb-3">
						<div class="col-md-12" style="padding-left:100px;">
					
					<div class="row padtop">
						<div class="col-md-2"><h5>Add Profile Photo:</h5></div>
						<div class="col-md-6">	
							<input type='file' onchange="readURL(this);" />
							<img id="profile-pic" src="#" alt="Profile Photo" />
						</div>
					</div>
					<!-- <div class="row padtop">
						<div class="col-md-2"><h5>Gender:</h5></div>
						<div class="col-md-5">
							<input type="radio" name="gender" value="male" checked> Male &nbsp; &nbsp;
							<input type="radio" name="gender" value="female"> Female<br>
						</div>
					</div> -->
					<div class="row padtop">
						<div class="col-md-2"><h5>Edit First Name:</h5></div>
						<div class="col-md-5"><input type="text" maxlength="20" placeholder="*Enter new First Name" name="fname"></div>
					</div><div class="row padtop">
						<div class="col-md-2"><h5>Edit Last Name:</h5></div>
						<div class="col-md-5"><input type="text" maxlength="20" placeholder="*Enter new Last Name" name="lname"></div>
					</div><div class="row padtop">
						<div class="col-md-2"><h5>Edit Phone No.:</h5></div>
						<div class="col-md-5"><input type="text" maxlength="10" placeholder="*Enter new Phone no." name="phone"></div>
					</div><div class="row padtop">
						<div class="col-md-2"><h5>Edit E-Mail ID:</h5></div>
						<div class="col-md-5"><input type="text" maxlength="100" placeholder="*Enter new Email-ID" name="emailid"></div>
					</div>
					<div class="row padtop">
						<div class="col-md-2"><h5>Tuition Type:</h5></div>
						<div class="col-md-5">
							<input type="radio" name="tuition-type" value="t-centre" checked> Tuition Centre &nbsp; &nbsp;
							<input type="radio" name="tuition-type" value="t-home"> Home Tuition<br>
						</div>
					</div>
					<div class="row padtop">
						<div class="col-md-2"><h5>Name of Tuition Centre:</h5></div>
						<div class="col-md-5"><input type="text" maxlength="30" placeholder="*for Tuition Centre only" name="courses-centre-name"></div>
					</div>
					<div class="row padtop">
						<div class="col-md-2"><h5>Address of Tuition Centre:</h5></div>
						<div class="col-md-5"><input type="text" maxlength="100" placeholder="*for Tuition Centre only" name="courses-centre-address"></div>
					</div>
					<div class="row padtop">
						<div class="col-md-2"><h5>Age:</h5></div>
						<div class="col-md-5"><input type="text" maxlength="2" name="age"> &nbsp; Years</div>
					</div>
					
					<div class="row padtop">
						<div class="col-md-2">
							<button type="submit" class="btn btn-primary">Submit</button>
						</div>
					</div>
					</form>
		</div></div>		</div>

			<footer id="footer" class="background-color-quaternary border-top-0 mt-0">
				<div class="container">
					<div class="row justify-content-between">
						<div class="col-lg-3 mb-4 mb-lg-0">
							<h2 class="font-weight-semibold text-color-light text-6 mb-3">Contact Details</h2>
							<p>Porto Education 123 <br>Porto Blvd, Suite</p>
							<span class="d-block text-5">
								Call: <a href="tel:+1234567890" class="text-3">123-456-7890</a>
							</span>
							<span class="d-block text-5 mb-4">
								Email: <a href="mailto:info@porto.com" class="text-3">info@porto.com</a>
							</span>
							<ul class="social-icons social-icons-transparent social-icons-icon-light">
								<li class="social-icons-facebook"><a href="http://www.facebook.com/" target="_blank" title="Facebook"><i class="fab fa-facebook-f"></i></a></li>
								<li class="social-icons-twitter"><a href="http://www.twitter.com/" target="_blank" title="Twitter"><i class="fab fa-twitter"></i></a></li>
								<li class="social-icons-linkedin"><a href="http://www.linkedin.com/" target="_blank" title="Linkedin"><i class="fab fa-linkedin-in"></i></a></li>
							</ul>
						</div>
						<div class="col-lg-4 mb-4 mb-lg-0">
							<div class="row">
								<div class="col">
									<h2 class="font-weight-semibold text-color-light text-6 mb-3">Courses</h2>
								</div>
							</div>
							<div class="row">
								<div class="col-lg-6">
									<ul class="list list-unstyled mb-0">
										<li><a href="demo-education-courses-detail.html">Archaeology</a></li>
										<li><a href="demo-education-courses-detail.html">Architecture</a></li>
										<li><a href="demo-education-courses-detail.html">Art & Design</a></li>
										<li><a href="demo-education-courses-detail.html">Aural & Oral Sciences</a></li>
										<li><a href="demo-education-courses-detail.html">Biological Sciences</a></li>
										<li><a href="demo-education-courses-detail.html">Building</a></li>
									</ul>
								</div>
								<div class="col-lg-6">
									<ul class="list list-unstyled mb-0">
										<li><a href="demo-education-courses-detail.html">Management Studies</a></li>
										<li><a href="demo-education-courses-detail.html">Celtic Studies</a></li>
										<li><a href="demo-education-courses-detail.html">Chemical Engineering</a></li>
										<li><a href="demo-education-courses-detail.html">Chemistry</a></li>
										<li><a href="demo-education-courses-detail.html">Civil Engineering</a></li>
										<li><a href="demo-education-courses-detail.html" class="text-color-primary">Much More</a></li>
									</ul>
								</div>
							</div>
						</div>
						<div class="col-lg-4">
							<div class="row">
								<div class="col">
									<h2 class="font-weight-semibold text-color-light text-6 mb-3">Newsletter</h2>
									<div class="newsletter">
										<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse in arcu facilisis quam.</p>
					
										<div class="alert alert-success d-none" id="newsletterSuccess">
											<strong>Success!</strong> You've been added to our email list.
										</div>
					
										<div class="alert alert-danger d-none" id="newsletterError"></div>
					
										<form id="newsletterForm" action="php/newsletter-subscribe.php" method="POST">
											<div class="input-group custom-input-group-style-1">
												<input class="form-control form-control-sm" placeholder="Email Address" name="newsletterEmail" id="newsletterEmail" type="text">
												<span class="input-group-append">
													<button class="btn btn-primary px-4" type="submit">Subscribe</button>
												</span>
											</div>
										</form>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="footer-copyright background-color-quaternary border-top-0">
					<div class="container">
						<div class="row">
							<div class="col">
								<p class="text-center">© Copyright 2018. All Rights Reserved.</p>
							</div>
						</div>
					</div>
				</div>
			</footer>
		</div>

		<!-- Vendor -->
		<script src="vendor/jquery/jquery.min.js"></script>
		<script src="vendor/jquery.appear/jquery.appear.min.js"></script>
		<script src="vendor/jquery.easing/jquery.easing.min.js"></script>
		<script src="vendor/jquery-cookie/jquery-cookie.min.js"></script>
		<script src="vendor/popper/umd/popper.min.js"></script>
		<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
		<script src="vendor/common/common.min.js"></script>
		<script src="vendor/jquery.validation/jquery.validation.min.js"></script>
		<script src="vendor/jquery.easy-pie-chart/jquery.easy-pie-chart.min.js"></script>
		<script src="vendor/jquery.gmap/jquery.gmap.min.js"></script>
		<script src="vendor/jquery.lazyload/jquery.lazyload.min.js"></script>
		<script src="vendor/isotope/jquery.isotope.min.js"></script>
		<script src="vendor/owl.carousel/owl.carousel.min.js"></script>
		<script src="vendor/magnific-popup/jquery.magnific-popup.min.js"></script>
		<script src="vendor/vide/vide.min.js"></script>
		<script src="vendor/jquery.countdown/jquery.countdown.min.js"></script>
		
		<!-- Theme Base, Components and Settings -->
		<script src="js/theme.js"></script>
		
		<!-- Current Page Vendor and Views -->
		<script src="vendor/rs-plugin/js/jquery.themepunch.tools.min.js"></script>
		<script src="vendor/rs-plugin/js/jquery.themepunch.revolution.min.js"></script>

		<!-- Demo -->
		<script src="js/demos/demo-education.js"></script>
		
		<!-- Theme Custom -->
		<script src="js/custom.js"></script>
		
		<!-- Theme Initialization Files -->
		<script src="js/theme.init.js"></script>




		<!-- Google Analytics: Change UA-XXXXX-X to be your site's ID. Go to http://www.google.com/analytics/ for more information.
		<script>
			(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
			(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
			m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
			})(window,document,'script','//www.google-analytics.com/analytics.js','ga');
		
			ga('create', 'UA-12345678-1', 'auto');
			ga('send', 'pageview');
		</script>
		 -->
		 

</body>
</html>