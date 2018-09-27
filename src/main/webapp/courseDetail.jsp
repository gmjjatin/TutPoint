<%@page import="tut.entity.UserDetailsEntity"%>
<%@page import="tut.service.OfyService"%>
<%@page import="tut.entity.CourseDetailsEntity"%>
<%@page import="com.googlecode.objectify.impl.Session"%>
<%@page import="com.google.appengine.api.blobstore.BlobKey"%>
<%@page import="com.google.appengine.api.blobstore.BlobstoreService"%>
<%@page import= "com.google.appengine.api.blobstore.BlobstoreServiceFactory"%>
<%@ page import="com.google.appengine.api.images.*" %>
<%
		String courseId=request.getParameter("courseId");
		CourseDetailsEntity cde=OfyService.ofy().load().type(CourseDetailsEntity.class).id(courseId).now();
		//String cId=(String)session.getAttribute("courseId");
		//UserDetailsEntity ude=(UserDetailsEntity)session.getAttribute("ude");
		UserDetailsEntity ude=OfyService.ofy().load().type(UserDetailsEntity.class).id(cde.owner).now();
		String servingUrl;
		if(ude.picId == null){
			servingUrl="img/default.jpg";
		}
		else{
	 	String blobKey = ude.picId;
		BlobKey bk = new BlobKey(blobKey);
		ImagesService imagesService = ImagesServiceFactory.getImagesService();
		ServingUrlOptions servingOptions = ServingUrlOptions.Builder.withBlobKey(bk); 
		servingUrl = imagesService.getServingUrl(servingOptions); }
		%>
		
		<!DOCTYPE html>
<html>
	<head>

		<!-- Basic -->
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">	

		<title>TutPoint - Course Detail</title>	

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
								<div class="header-column justify-content-start">
									<div class="header-row">
										
									</div>
								</div>
								
								<div class="header-column justify-content-end">
									<div class="header-row">
										<nav class="header-nav-top mr-0">
											<ul class="nav">
												<%if(session.getAttribute("uemail")!= null){ %>
												<li><a href="logout"><span class="ws-nowrap"> Logout</span></a></li>
												<%} else{ %>
												<li><a href="index.jsp#registernow"><span class="ws-nowrap"><i class="far fa-user"></i> Login</span></a></li>
												<li><a href="index.jsp#registernow"><span class="ws-nowrap"><i class="fas fa-pencil-alt"></i> Register</span></a></li>
												<% } %>
											</ul>
										</nav>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="header-container container">
						<div class="header-row">
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
									<div class="header-nav header-nav-stripe">
										<div class="header-nav-main header-nav-main-effect-1 header-nav-main-sub-effect-1">
											<nav class="collapse">
												<ul class="nav" id="mainNav">
													<li>
														<a class="nav-link" href="index.jsp">
															Home
														</a>
													</li>
													<li>
														<a class="nav-link" href="index.jsp#seecourses">
															Courses
														</a>
													</li>
													<% if(session.getAttribute("uemail")!=null){ %>
													<li>
														<a class="nav-link" href="dashboard.jsp">
															Dashboard
														</a>
													</li>
													<%} %>
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

				<div class="slider-container rev_slider_wrapper" style="height:150px;">
				</div>
			
				<section class="section background-color-tertiary border-0 my-0 pb-4">
					<div class="container">
						<div class="row">
							<div class="col-lg-7">
								<div class="row">
									<div class="col-lg-12">
										<center><h1><strong><%= cde.subject %> </strong> by <%= ude.name %></h1></center>
									</div>								
								
									<div class="col-lg-12">
										<center><h4><strong>Class: </strong><%= cde.classlvl %></h4></center>
									</div>
									<div class="col-lg-12">
										<center><h6><strong>Experience: </strong><%= cde.experience %> Years</h6></center>
									</div>
									<div class="col-lg-12">
										<center><h4><strong>Phone: </strong><%= ude.phone %></h4></center>
									</div>
									<div class="col-lg-12">
										<center><h4><strong>Email: </strong><%= cde.owner %></h4></center>
									</div>									
								</div>
							</div>
							<div class="offset-lg-2 col-lg-3">
								<% if(servingUrl != null){ %>
							<p><img src="<%=servingUrl%>" alt="Profile Photo" class="img-responsive img-thumbnail"></p>
							<% }
							else{ 
							%>
							<a href="editProfile.jsp"><p><img src="img/default.jpeg" alt="Add Profile Photo" class="img-responsive img-thumbnail"></p></a>
							<% } %>
								<!--<img src="img/teacher.jpg" alt="image" height=150px class="img-thumbnail">-->
							</div>						
						</div>
						<% if("Centre".equals(cde.tutType)){ %>
						<div class="row" style="padding-top:20px;">
							<div class="col-lg-7">
								<center><h5><i class="fa fa-university"></i> <%= cde.tutName %></h5></center>
							</div>
						</div>
						
						<div class="row">
							<div class="col-lg-7">
								<center><h6><strong>Address: </strong><%= cde.tutAdd %></h6></center>
							</div>
						</div>
						<% } else { %>
						<div class="row" style="padding-top:20px;">
							<div class="col-lg-7">
								<center><h5><i class="fa fa-home"></i> Home Tuition</h5></center>
							</div>
						</div>
						<% } %>
						<div class="row">
							<div class="col-lg-7">
								<center><h6 style="margin-bottom:2px;"><strong>Fees: </strong>Rs. <%= cde.courseFees %> pm</h6>
								<% if(cde.feesNeg=="yes"){ %>(Negotiable)<%} else{ %>(Not negotiable)<% } %></center><br>
							</div>
						</div>
						<div class="row">
							<div class="col-lg-7">
								<center><h6><strong>Trial Classes: </strong><%= cde.trial %></h6></center>
							</div>
						</div>
						
						</div>
						<div class="row" style="padding-top:20px;">
							<div class="col-lg-8">
								<center><a href="javascript:history.back()"><button class="btn">Go Back</button></a></center>
							</div>
						</div>
					</div>
				</section>
			<footer id="footer" class="background-color-quaternary border-top-0 mt-0">
				<div class="container">
				<div class="row">					
					<div class="col-lg-9">
						<div class="row justify-content-between">
							<div class="col-lg-12"><h2>Contact Us</h2></div>
							<div class="col-lg-4 col-md-4 mb-4 mb-lg-0">
								<h5 class="text-color-light mb-3">Ankur Palmia</h5>
								<p>B.Tech (Information Technology)<br>MSIT (GGSIPU)</p>
							
								<span class="d-block text-5 mb-4">
									<a href="mailto:ankur.palmia@gmail.com" class="text-1">Email: ankur.palmia@gmail.com</a>
								</span>
								<ul class="social-icons social-icons-transparent social-icons-icon-light">
									<li class="social-icons-facebook"><a href="http://www.facebook.com/ankur.palmia" target="_blank" title="Facebook"><i class="fab fa-facebook-f"></i></a></li>
									<li class="social-icons-instagram"><a href="https://www.instagram.com/ankurpalmia/" target="_blank" title="Instagram"><i class="fab fa-instagram"></i></a></li>
									<li class="social-icons-linkedin"><a href="https://www.linkedin.com/in/ankur-palmia-9a44b8100/" target="_blank" title="Linkedin"><i class="fab fa-linkedin-in"></i></a></li>
								</ul>
							</div>
							<div class="col-lg-4 mb-4 col-md-4 mb-lg-0">
								<h5 class="text-color-light mb-3">Chetanya Mahajan</h5>
								<p>B.Tech (Computer Science)<br>MSIT (GGSIPU)</p>
							
								<span class="d-block text-5 mb-4">
									<a href="mailto:chetanyamahajan98.com" class="text-1">Email: chetanyamahajan98@gmail.com</a>
								</span>
								<ul class="social-icons social-icons-transparent social-icons-icon-light">
									<li class="social-icons-facebook"><a href="http://www.facebook.com/chetanya.mahajan" target="_blank" title="Facebook"><i class="fab fa-facebook-f"></i></a></li>
									<li class="social-icons-instagram"><a href="https://www.instagram.com/mahajan_chetanya/" target="_blank" title="Instagram"><i class="fab fa-instagram"></i></a></li>
									<li class="social-icons-linkedin"><a href="https://www.linkedin.com/in/" target="_blank" title="Linkedin"><i class="fab fa-linkedin-in"></i></a></li>
								</ul>
							</div>
							<div class="col-lg-4 col-md-4 mb-4 mb-lg-0">
								<h5 class="text-color-light mb-3">Jatin Sharma</h5>
								<p>B.Tech (Information Technology)<br>MSIT (GGSIPU)</p>
							
								<span class="d-block text-5 mb-4">
									<a href="mailto:gmjjatin@gmail.com" class="text-1">Email: gmjjatin@gmail.com</a>
								</span>
								<ul class="social-icons social-icons-transparent social-icons-icon-light">
									<li class="social-icons-facebook"><a href="http://www.facebook.com/gmjjatin" target="_blank" title="Facebook"><i class="fab fa-facebook-f"></i></a></li>
									<li class="social-icons-instagram"><a href="https://www.instagram.com/gmjjatin/" target="_blank" title="Instagram"><i class="fab fa-instagram"></i></a></li>
								<li class="social-icons-linkedin"><a href="https://www.linkedin.com/in/" target="_blank" title="Linkedin"><i class="fab fa-linkedin-in"></i></a></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="col-lg-3">
					<div class="row justify-content-between">
						<div class="col-lg-12">
							<h4>Mentor</h4>
						</div>
						<div class="col-lg-12 col-md-12 mb-4 mb-lg-0">
							<h5 class="text-color-light mb-3">Ashish Singh</h5>
							<p>OSAHUB Technologies</p>
							
							<span class="d-block text-5 mb-4">
								<a href="mailto:ashish@osahub.com" class="text-1">Email: ashish@osahub.com</a>
							</span>
							<ul class="social-icons social-icons-transparent social-icons-icon-light">
								<li class="social-icons-website"><a href="http://www.osahub.com" target="_blank" title="Osahub"><i class="fab fa-internet-explorer"> www.osahub.com</i></a></li>
								</ul>
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
				</div>
			</footer>
		</div>

		<!-- Vendor -->
		<script src="vendor/jquery/jquery.min.js"></script>
		<script src="vendor/jquery.appear/jquery.appear.min.js"></script>
		<script src="vendor/jquery.easing/jquery.easing.min.js"></script>
		<script src="vendor/jquery-cookie/jquery-cookie.min.js"></script>
		<script src="https://getbootstrap.com/assets/js/vendor/popper.min.js"></script>
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
		
	