<%@page import="com.google.appengine.api.blobstore.BlobstoreService"%>
<%@page import= "com.google.appengine.api.blobstore.BlobstoreServiceFactory"%>
<%@ page import="com.google.appengine.api.blobstore.BlobKey"%>
<%@ page import="com.google.appengine.api.images.*" %>
			
							 <%
 	BlobstoreService blobstoreService = BlobstoreServiceFactory
 			.getBlobstoreService();
 %>



<%@page import="java.util.Iterator"%>
<%@page import="tut.service.OfyService"%>
<%@page import="tut.entity.CourseDetailsEntity"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>

		<!-- Basic -->
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">	

		<title>TutPoint</title>	

		<meta name="keywords" content="tution" />
		<meta name="description" content="tution point">
		<meta name="author" content="jatin">

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
				<div class="header-body " >
				
					<div class="header-top header-top-style-3">
						<div class="container">
							<div class="header-row">
								<div class="header-column justify-content-start">
									<div class="header-row">
										<nav class="header-nav-top">
											<!--<ul class="nav">
												<li>Phone: <a href="tel:+1234567890"><span class="ws-nowrap">125 586 5555</span></a></li>
												<li class="d-none d-md-block"> Email: <span class="ws-nowrap"><a class="text-decoration-none" href="mailto:info@porto.com">info@porto.com</a></span></li>
												<li class="d-none d-lg-block">Time: <span class="ws-nowrap">Mon-Sat 8:00am - 5:00pm</span></li>
											</ul>-->
										</nav>
									</div>
								</div>
								
								<div class="header-column justify-content-end">
									<div class="header-row">
										<nav class="header-nav-top mr-0">
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
								</div>
							</div>
						</div>
					</div>
					<div class="header-container container" style="height: 120px;">
						<div class="header-row">
							<div class="header-column">
								<div class="header-row">
									<div class="header-logo py-2">
										<a href="index.html">
											<img alt="TutPoint" width="160" height="48" src="img/demos/education/logo.png">
										</a>
									</div>
								</div>
							</div>
					<div class="button_box2">
						<form class="form-wrapper-2 cf">
							<input type="text" placeholder="Search here..." required>
							<button type="submit">Search</button>
						</form>
					</div>
					<div class="header-column justify-content-end">
								<div class="header-row">
									<div class="header-nav header-nav-stripe">
										<div class="header-nav-main header-nav-main-effect-1 header-nav-main-sub-effect-1">
											<nav class="collapse">
												<ul class="nav" id="mainNav">
												<%if(session.getId()!=null){ %>
												<li>
														<a class="nav-link" href="/dashboard.jsp">
															Dashboard
														</a>
													</li>
													
												
												
												<%} %>
													<li>
														<a class="nav-link active" href="index.html">
															Home
														</a>
													</li>
													<li class="dropdown">
													<a class="dropdown-item dropdown-toggle" href="demo-education-courses.html">
															Courses
														</a>
														<ul class="dropdown-menu">
															<li>
																<a class="dropdown-item nav-link" href="index.html">
																	School
																</a>
															</li>
														<li>
																<a class="dropdown-item nav-link" href="index.html">
																	Professional
																</a>
															</li>
														<li>
																<a class="dropdown-item nav-link" href="index.html">
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
														<a class="nav-link" href="demo-education-instructors.html">
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
				
				<div class="slider-container rev_slider_wrapper" style="height: 740px;">
					<div id="revolutionSlider" class="slider rev_slider manual" data-version="5.4.7">
						<ul>
							<li data-transition="fade">
								<img src="img/demos/education/slides/slide-1.jpg"  
									alt=""
									data-bgposition="center center" 
									data-bgfit="cover" 
									data-bgrepeat="no-repeat" 
									data-kenburns="on" 
									data-duration="20000" 
									data-ease="Linear.easeNone" 
									data-scalestart="110" 
									data-scaleend="100" 
									data-offsetstart="250 100" 
									class="rev-slidebg">
								
								<h1 class="tp-caption font-weight-bold text-color-light text-center"
									data-x="center"
									data-y="center" data-voffset="['10','10','10','10']"
									data-width="['770','770','770','350']"
									data-start="1000"
									data-fontsize="['53','53','45','35']"
									data-lineheight="['56','56','50','40']"
									data-transform_in="y:[100%];opacity:0;s:500;"
									data-transform_out="opacity:0;s:500;"
									style="white-space: normal;">Complete Solution For Your Education Needs</h1>

								<a class="tp-caption btn btn-primary text-1 font-weight-semibold custom-btn-style-1"
									href="#seecourses"
									data-x="center"
									data-y="center" data-voffset="['130','130','130','130']"
									data-start="1300"
									data-fontsize="['14','14','14','20']"
									data-paddingtop="['11','11','11','16']"
									data-paddingbottom="['11','11','11','16']"
									data-paddingleft="['32','32','32','42']"
									data-paddingright="['32','32','32','42']"
									data-transform_in="y:[100%];opacity:0;s:500;"
									data-transform_out="opacity:0;s:500;">See Courses</a>

							</li>
							<li data-transition="fade">
								<img src="img/demos/education/slides/slide-2.jpg"  
									alt=""
									data-bgposition="center center" 
									data-bgfit="cover" 
									data-bgrepeat="no-repeat" 
									data-kenburns="on" 
									data-duration="20000" 
									data-ease="Linear.easeNone" 
									data-scalestart="110" 
									data-scaleend="100" 
									data-offsetstart="250 100" 
									class="rev-slidebg">
								
								<h1 class="tp-caption font-weight-bold text-color-light text-center"
									data-x="center"
									data-y="center" data-voffset="['10','10','10','10']"
									data-width="['770','770','770','350']"
									data-start="1000"
									data-fontsize="['53','53','45','35']"
									data-lineheight="['56','56','50','40']"
									data-transform_in="y:[100%];opacity:0;s:500;"
									data-transform_out="opacity:0;s:500;"
									style="white-space: normal;">Teach the students your Best skills!</h1>

								<a class="tp-caption btn btn-primary text-1 font-weight-semibold custom-btn-style-1"
									href="#registernow"
									data-x="center"
									data-y="center" data-voffset="['130','130','130','130']"
									data-start="1300"
									data-fontsize="['14','14','14','20']"
									data-paddingtop="['11','11','11','16']"
									data-paddingbottom="['11','11','11','16']"
									data-paddingleft="['32','32','32','42']"
									data-paddingright="['32','32','32','42']"
									data-transform_in="y:[100%];opacity:0;s:500;"
									data-transform_out="opacity:0;s:500;">Register Now</a>

							</li>
						</ul>
					</div>
				</div>
				
				<section class="n background-color-tertiary border-0 my-0" id="seecourses">
					<div class="container">
						<div class="row">
							<div class="col">
								<h2 class="font-weight-bold text-center appear-animation" data-appear-animation="fadeInUpShorter">Popular Courses near you</h2>
							</div>
						</div>
						<div class="row justify-content-center mb-5">
							<div id="myBtnContainer">
								<button class="btnC active" onclick="filterSelection('all')"> Show all</button> &nbsp;
								<button class="btnC" onclick="filterSelection('school')"> School</button>
								<button class="btnC" onclick="filterSelection('professional')"> Professional</button>
								<button class="btnC" onclick="filterSelection('cocurricular')"> Co-Curricular</button>
							</div>
						</div>
						<div class="row justify-content-center mb-5 grid" >
												<%
						List<CourseDetailsEntity> cde=OfyService.ofy().load().type(CourseDetailsEntity.class).list(); 
						Iterator<CourseDetailsEntity> itr=cde.iterator();
						while(itr.hasNext()){
						CourseDetailsEntity course=itr .next();
						%>
							<div class="col-md-6 col-lg-4 col-xl-3 mb-4 pb-3 appear-animation" data-appear-animation="fadeInLeftShorter" data-appear-animation-delay="400">
								<div class="thumb-info thumb-info-hide-wrapper-bg custom-thumb-info-style-1" style="border-radius: 20px ;">
									<div class="thumb-info-wrapper" style="border-radius: 20px ;">
										<a href="demo-education-courses-detail.html"><img src="img/demos/education/courses/course-1.jpg" class="img-fluid" alt=""></a>
										<div class="thumb-info-price background-color-secondary font-weight-semibold">
											<span>&#8377;<%=course.courseFees %></span>&nbsp;&nbsp;
											<span ><%if((course.trial).equals("Sunday")){
											%><i class="fas fa-thumbs-up"></i>Trials
											<%
										} %></span>
										</div >
										<span style="text-transform: uppercase; text-align: center;line-height:25px; padding: 8px 8px; position:inherit; left:35%; " class=" background-color-secondary font-weight-bold"><a href="demo-education-courses-detail.html"><i class="fas fa-user " style="color: white"></i>&nbsp;<span style="color:white"><%=course.owner %></span></a></span>
									</div>
									
										<h3 style="text-transform: uppercase; text-align: center;position:inherit; left:35%; " class="font-weight-semibold text-transform-none"><a href="demo-education-courses-detail.html" class="custom-link-color-dark"><%=course.subject %></a></h3>
									<a href="demo-education-profile.html" style="text-transform: uppercase;position:inherit; left:35%; "><i class="fas fa-university  text-color-primary"></i><%=course.tutAdd%></a>
									<div class="thumb-info-footer">
										<ul class="nav text-1"  >
																					
											<li class="ml-3" ><a  href="demo-education-profile.html"  style="position:relative; "><i class="fa fa-angle-down text-color-primary"></i> More Details</a></li>
										</ul>
									</div>
								</div>
							</div>
							
							
							
							
							
							

 					
 				<%}%>
						</div> 
					</div> 
				</section>


				<section id="registernow" class="section parallax section-parallax my-0 border-0" data-plugin-parallax data-plugin-options="{'speed': 1.5, 'parallaxHeight': '125%'}" data-image-src="img/demos/education/parallax/parallax-1.jpg">
					<div class="container">
						<div class="row">
							<div class="col-md-7 col-lg-7 col-xl-6 appear-animation" id="registerForm" data-appear-animation="fadeInLeftShorter">
								<div class="card">
									<div class="card-body p-5">
										<h2 class="font-weight-bold text-center text-6 mb-0">REGISTER NOW</h2>
										<p class="text-color-dark text-3 text-center">and start teaching</p>
										<form class="custom-form-style-1" action="/register"method="post">
											<div class="form-row">
												<div class="form-group col-md-6 pr-md-0">
													<input type="text" value="" data-msg-required="Please enter your name." maxlength="100" class="form-control background-color-tertiary" name="name" id="name" placeholder=" Name*" required>
												</div>
												<div class="form-group col-md-6 pl-md-0">
													<input type="email" value="" data-msg-required="Please enter your email address." data-msg-email="Please enter a valid email address." maxlength="100" class="form-control background-color-tertiary custom-border-left-1" name="email" id="email" placeholder=" Email*" required>
												</div>
											</div>
											<div class="form-row">
												<div class="form-group col-md-6 pr-md-0">
													<input type="text" value="" data-msg-required="Please enter your phone number." maxlength="100" class="form-control background-color-tertiary" name="phone" id="phone" placeholder=" Phone*" required>
												</div>
												<div class="form-group col-md-6 pl-md-0">
													<input type="password" value="" data-msg-required="Please enter your password." maxlength="100" class="form-control background-color-tertiary custom-border-left-1" name="pass" id="pass" placeholder=" Password*" required>
												</div>
												
											</div>
											<div class="form-row">
												<div class="form-group col" style="padding-top:8px;">
													<input type="submit" value="REGISTER" class="btn btn-primary text-1 font-weight-semibold d-block text-4 py-3 w-100" data-loading-text="Loading...">
												</div>
											</div>
										</form>
									</div>
								</div>
							</div>
							<div class="col-md-5 col-lg-5 col-xl-6 appear-animation" data-appear-animation="fadeInLeftShorter">
								<div class="card">
									<div class="card-body p-5">
										<h2 class="font-weight-bold text-center text-6 mb-0">SIGN IN</h2>
										<p class="text-color-dark text-5 text-center"></p>
										<form class="custom-form-style-1" action="/login"method="post">
											<div class="form-row">
												<div class="form-group col-md-12">
													<input type="text" value="" data-msg-required="Please enter your Email Id" maxlength="100" class="form-control background-color-tertiary" name="email" id="email" placeholder=" email" required>
												</div>
												
											</div>
												<div class="form-group col-md-13">
													<input type="password" value="" maxlength="100" class="form-control background-color-tertiary custom-border-left-1" name="pass" id="userpass" placeholder=" password">
												</div>
												<h6 class="text-center"><a href="forgotPass">Forgot Password</a></h6>
											<div class="form-row">
												<div class="form-group col" style="padding-bottom:-5px;">
													<input type="submit" value="SignIn" class="btn btn-primary text-1 font-weight-semibold d-block text-4 py-3 w-100" data-loading-text="Loading...">
												</div>
											</div>
										</form>
									</div>
								</div>
							</div>
						</div>
					</div>
				</section>
				<section class="section background-color-light border-0 my-0">
					<div class="container">
						<div class="row text-center">
							<div class="col">
								<h2 class="font-weight-bold mb-4 appear-animation" data-appear-animation="fadeInUpShorter">What Students Says</h2>
							</div>
						</div>
						<div class="row justify-content-center appear-animation" data-appear-animation="fadeInRightShorter" data-appear-animation-delay="200">
							<div class="col">
								<div class="owl-carousel custom-nav m-0" data-plugin-options="{'items': 1, 'loop': false, 'dots': false, 'nav': true, 'autoHeight': true}">
									<div class="row justify-content-center">
										<div class="col-lg-10">
											<div class="testimonial testimonial-style-2 testimonial-with-quotes custom-testimonial-style-1">
												<blockquote>
													<p>Its so easy to find worthy tutors here that too  without any login or time waste.</p>
												</blockquote>
												<div class="testimonial-author">
													<img src="img/demos/education/authors/author-1.jpg" class="img-fluid rounded-circle" alt />
													<p>
														<strong class="text-uppercase text-color-dark">Ashish Singh</strong>
													</p>
													<div class="rate">
														<i class="fas fa-star"></i>
														<i class="fas fa-star"></i>
														<i class="fas fa-star"></i>
														<i class="fas fa-star"></i>
														<i class="fas fa-star"></i>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="row justify-content-center">
										<div class="col-lg-10">
											<div class="testimonial testimonial-style-2 testimonial-with-quotes custom-testimonial-style-1">
												<blockquote>
													<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse in arcu facilisis quam aliquam ultrices quis in purus. Donec volutpat et justo et viverra. Suspendisse id justo a ipsum viverra ultrices quis et quam.</p>
												</blockquote>
												<div class="testimonial-author">
													<img src="img/demos/education/authors/author-2.jpg" class="img-fluid rounded-circle" alt />
													<p>
														<strong class="text-uppercase text-color-dark">JOSIE DOE</strong>
													</p>
													<div class="rate">
														<i class="fas fa-star"></i>
														<i class="fas fa-star"></i>
														<i class="fas fa-star"></i>
														<i class="fas fa-star"></i>
														<i class="fas fa-star"></i>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</section>
				
			<footer id="footer" class="background-color-quaternary border-top-0 mt-0">
				<div class="container">
					<div class="row justify-content-between">
						<div class="col-lg-3 mb-4 mb-lg-0">
							<h2 class="font-weight-semibold text-color-light text-6 mb-3">Contact Details</h2>
							<p>TutPoint Education<br>JanakPuri New Delhi</p>
								<span class="d-block text-5 mb-4">
								Email: <a href="mailto:admin-tutpoint@outlook.com" class="text-3">admin-tutpoint@outlook.com</a>
							</span>
							<ul class="social-icons social-icons-transparent social-icons-icon-light">
								<li class="social-icons-facebook"><a href="http://www.facebook.com/" target="_blank" title="Facebook" style="padding-top: 7px;"><i class="fab fa-facebook-f"></i></a></li>
								<li class="social-icons-twitter"><a href="http://www.twitter.com/" target="_blank" title="Twitter" style="padding-top: 7px;"><i class="fab fa-twitter"></i></a></li>
								<li class="social-icons-linkedin"><a href="http://www.linkedin.com/" target="_blank" title="Linkedin" style="padding-top: 7px;"><i class="fab fa-linkedin-in"></i></a></li>
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
						<!-- <div class="col-lg-4">
							<div class="row">
								<div class="col">
									<h2 class="font-weight-semibold text-color-light text-6 mb-3">Newsletter</h2>
									<div class="newsletter">
										<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse in arcu facilisis quam.</p>
					
										<div class="alert alert-success d-none" id="newsletterSuccess">
											<strong>Success!</strong> You've been added to our email list.
										</div>
					
										<div class="alert alert-danger d-none" id="newsletterError"></div>
					
										<form id="newsletterForm" action="php/newsletter-subscribe.php" method="post">
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
				</div> -->
				<div class="footer-copyright background-color-quaternary border-top-0">
					<div class="container">
						<div class="row">
							<div class="col">
								 <p class="text-center">&#169; Copyright 2018. All Rights Reserved.</p>
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


</div>
	</body>
</html>