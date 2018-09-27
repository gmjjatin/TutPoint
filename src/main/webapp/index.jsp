<!DOCTYPE html>
<%@page import="com.google.appengine.api.blobstore.BlobKey"%>
<%@page import="com.google.appengine.api.blobstore.BlobstoreService"%>
<%@page import= "com.google.appengine.api.blobstore.BlobstoreServiceFactory"%>
<%@ page import="com.google.appengine.api.images.*" %>
<%@page import="tut.entity.UserDetailsEntity"%>
<%@page import="java.util.Iterator"%>
<%@page import="tut.service.OfyService"%>
<%@page import="tut.entity.CourseDetailsEntity"%>
<%@page import="java.util.List"%>

<html>
	<head>

		<!-- Basic -->
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">	

		<title>TutPoint</title>	

		<meta name="keywords" content="tuition" />
		<meta name="description" content="tuition advertorial">
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
												<li><a href="#loginnow"><span class="ws-nowrap"><i class="far fa-user"></i> Login</span></a></li>
												<li><a href="#registernow"><span class="ws-nowrap"><i class="fas fa-pencil-alt"></i> Register</span></a></li>
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
									<div class="header-logo">
										<a href="index.jsp">
											<img alt="TutPoint" width="160" height="48" src="img/demos/education/logo.png">
										</a>
									</div>
								</div>
							</div>
							
							<div class="header-column justify-content-end">
							
								<div class="header-row">
								<div class="header-column">
									<div class="header-nav header-nav-stripe">
									<div class="search header-nav-main header-nav-main-effect-1 header-nav-main-sub-effect-1">
											<nav class="collapse py-2">
												
													<input class="py-2" type="search" name="searchString" data-target="#mysearch" list="mysearch" id="searchBox" placeholder="Search..."  >
									<datalist id="mysearch" >
											<option>Accountancy</option>
											<option>Business Studies</option>
											<option>Chemistry</option>		
											<option>Maths</option>	
											<option>Physics</option>
											<option>Science</option>
											<option>Maths</option>
									</datalist>
                                    <button class="btn header-btn-collapse-nav " type="submit" onclick="filterSelectionForSearchBox()" ><i class="fa fa-search" aria-hidden="true"></i></button>
                                
													
														
												
											</nav>
										</div>
										<button class="btn header-btn-collapse-nav" data-toggle="collapse" data-target=".search nav" >
											<i class="fas fa-search"></i>
										</button>
							

                                
                                   
							</div>
							</div>
							</div>
							</div>
							<div class="header-column justify-content-end">
								<div class="header-row">
									<div class="header-nav header-nav-stripe">
										<div class="header-nav-main header-nav-main-effect-1 header-nav-main-sub-effect-1 mainNav1" >
											<nav class="collapse mainNav1" >
												<ul class="nav" id="mainNav">
													<li>
														<a class="nav-link active" href="index.jsp">
															Home
														</a>
													</li>
													<li>
														<a class="nav-link" href="#seecourses">
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
										<button class="btn header-btn-collapse-nav" data-toggle="collapse" data-target=".header-nav-main nav" >
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
						<ul style="min-width: 320px !important;">
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
				
				<section class="section background-color-tertiary border-0 my-0" id="seecourses">
					<div class="container">
						<div class="row">
							<div class="col">
								<h2 class="font-weight-bold text-center appear-animation" data-appear-animation="fadeInUpShorter">Popular Courses near you</h2>
							</div>
						</div>
						<div class="row justify-content-center mb-5">
							<div id="myBtnContainer">
								<button class="btnC active" onclick="filterSelection('all')"> Show all</button> 
								<button class="btnC" onclick="filterSelection('School')"> School</button>
								<button class="btnC" onclick="filterSelection('Professional')"> Professional</button>
								<button class="btnC" onclick="filterSelection('CoCurricular')" style="margin-top:5px;"> CoCurricular</button>
							</div>
						</div>
						
						
						<div class="row justify-content-center" >
						
						<% 
							
							
							List<CourseDetailsEntity> courseList=OfyService.ofy().load().type(CourseDetailsEntity.class).order("-likes").list();
							Iterator<CourseDetailsEntity> itr=courseList.iterator();
							while(itr.hasNext()){							
							CourseDetailsEntity user=itr.next();
							UserDetailsEntity tutor=OfyService.ofy().load().type(UserDetailsEntity.class).id(user.owner).now();
							
							String servingUrl;
							if(tutor.picId == null){
								servingUrl="img/default.jpg";
							}
							else{
						 	String blobKey = tutor.picId;
							BlobKey bk = new BlobKey(blobKey);
							ImagesService imagesService = ImagesServiceFactory.getImagesService();
							ServingUrlOptions servingOptions = ServingUrlOptions.Builder.withBlobKey(bk); 
							servingUrl = imagesService.getServingUrl(servingOptions); }
							String cId=user.courseId;
							%>
							
							<div class="col-12 col-md-4 col-lg-4 col-xl-4 mb-4 pb-3 appear-animation <%=user.courseType%> <%=user.subject%> <%=user.courseFees%> <%=tutor.name%> <%=user.tutType%> <%=user.tutAdd%> <%=user.tutName%> columnC" data-appear-animation="fadeInUpShorter" data-appear-animation-delay="100">
								<div class="thumb-info thumb-info-hide-wrapper-bg custom-thumb-info-style-1">
									<div class="thumb-info-wrapper">
										<a href="courseDetail.jsp?courseId=<%=cId%>"><img src="<%=servingUrl %>" class="img-fluid resp img-thumbnail" alt=""></a>
										<div class="thumb-info-price background-color-secondary font-weight-semibold">
											<span>Rs. <%= user.courseFees %></span>
										</div>
									</div>
									<div class="thumb-info-caption" style="margin-bottom:-40px;">
										<a href=<%="\"courseDetail.jsp?courseId="+cId+"\"" %>><h2 class="font-weight-semibold text-transform-none subject"><%= user.subject %></h2></a>
										
										<!-- LikeBtn.com BEGIN -->
									<!-- Use an element to toggle between a like/dislike icon -->
									
									<i onclick="myFunction(this);"   class="fa fa-thumbs-up like" id="<%=cId%>" style="padding-right:10px;" ></i>
									<div id="<%=cId+1%>" class="likeNumber"><%=user.likes%></div>

											<!-- LikeBtn.com END -->


											<h5> -<%= tutor.name %></h5>
										<% if("Home".equals(user.tutType)){ %>
										<i class="fa fa-home text-color-primary"> Home Tuition</i>
										<h6></h6>
										<% }
											else{ %>
											<i class="fa fa-university text-color-primary"> <%= user.tutName %></i>
											<h6><%= user.tutAdd %></h6>
											<% } %>
										
									</div>
									<div class="thumb-info-footer">
										<ul class="nav text-1">
											<li class="ml-3"><a href=<%="\"courseDetail.jsp?courseId="+cId+"\"" %>><i class="fa fa-align-justify text-color-primary"></i> More Details</a></li>
										</ul>
									</div>
								</div>
							</div>
							<% } %>
							</div>
						
						
						
					</div>
				</section>
				<%if(session.getAttribute("uemail")==null){ %>
				<section id="registernow" style="padding: 0 0 !important;" class="section parallax section-parallax my-0 border-0" data-plugin-parallax data-plugin-options="{'speed': 1.5, 'parallaxHeight': '125%'}" data-image-src="img/demos/education/parallax/parallax-1.jpg">
					<div class="container">
						<div class="row">
							<div class="col-md-7 col-lg-7 col-xl-6 appear-animation" id="registerForm" data-appear-animation="fadeInLeftShorter">
								<div class="card">
									<div class="card-body p-5">
										<h2 class="font-weight-bold text-center text-6 mb-0">REGISTER NOW</h2>
										<p class="text-color-dark text-3 text-center">and start teaching</p>
										<form class="custom-form-style-1" action="register" method="post">
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
								<div class="card" id="loginnow">
									<div class="card-body p-5">
										<h2 class="font-weight-bold text-center text-6 mb-0">SIGN IN</h2>
										<p class="text-color-dark text-5 text-center"></p>
										<form class="custom-form-style-1" action="login" method="post">
											<div class="form-row">
												<div class="form-group col-md-12">
													<input type="text" value="" data-msg-required="Please enter your Email Id" maxlength="100" class="form-control background-color-tertiary" name="email" id="email" placeholder=" Email" required>
												</div>
												
											</div>
												<div class="form-group col-md-13">
													<input type="password" value="" maxlength="100" class="form-control background-color-tertiary custom-border-left-1" name="pass" id="userpass" placeholder=" Password">
												</div>
												<h6 class="text-center"><a href="forgotPass.html">Forgot Password</a></h6>
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
				<% } %>
				
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
									<a href="http://cv-jatinsharma.appspot.com/" class="text-1" target="_blank">Portfolio</a>
								</span>
								<ul class="social-icons social-icons-transparent social-icons-icon-light">
									<li class="social-icons-facebook"><a href="http://www.facebook.com/gmjjatin" target="_blank" title="Facebook"><i class="fab fa-facebook-f"></i></a></li>
									<li class="social-icons-instagram"><a href="https://www.instagram.com/gmjjatin/" target="_blank" title="Instagram"><i class="fab fa-instagram"></i></a></li>
								<li class="social-icons-linkedin"><a href="https://www.linkedin.com/in/jatin-sharma-3825b2129/" target="_blank" title="Linkedin"><i class="fab fa-linkedin-in"></i></a></li>
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
								<p class="text-center"> &copy; 2018. All Rights Reserved.</p>
							</div>
						</div>
					</div>
				</div>
				</div>
			</footer>
		</div>
		</div>
		<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true" >
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle">User Not Logged-in</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        Please login to like the courses
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <a href="#loginnow"><button type="submit" class="btn btn-primary" data-dismiss="modal">Login</button></a>
      </div>
    </div>
  </div>
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
		<!-- sort course based on like/popularity -->
		<!-- <script src="js/sort.js"></script> -->
		
		<!-- Theme Initialization Files -->
		<script src="js/theme.init.js"></script>
		
		<script src="js/modal.js"></script>
		<script src="js/util.js"></script>
		
		
													<!-- click button -->
		<script type="text/javascript">
		
			function myFunction(x) {
				
				var y;
				var z=x.id;
				if (x.classList == "fa fa-thumbs-up like") {
					
					y=1;

				} else {
					
					y=0;
				}
					
				$.ajax({
					  url: '/likesController',
					  type: 'POST',
					  data: { param0:z,param1:y },
					  success: function(responseText) {
						  
						 var check=responseText.localeCompare("notLoginError");
						 
						 if(check==0){
							//call modal function
								$('#myModal').modal('show');  
						 }
						 else{
								//change in icon
								if(y==1){x.classList = "fa fa-thumbs-down like";}
								else{x.classList = "fa fa-thumbs-up like";}
									
							$("#"+z+"1").text(responseText);           // Locate HTML DOM element with ID "#z1" and set its text content with the response text.
						 }
						  
				        },
				        error: function(XMLHttpRequest, textStatus, errorThrown) {
				            response = "err--" + XMLHttpRequest.status + " -- " + XMLHttpRequest.statusText;
				        }
					});
			}
		</script>
		



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
