<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" session="false"%>
<!--A Design by W3layouts
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html lang="en">
<head>
<title>Home Page</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="Net Banking Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="application/x-javascript">
	
	
	
	
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 




</script>
<!-- bootstrap-css -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css"
	media="all" />
<!--// bootstrap-css -->
<!-- css -->
<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
<!--// css -->
<link rel="stylesheet" href="css/owl.carousel.css" type="text/css"
	media="all">
<link href="css/owl.theme.css" rel="stylesheet">
<link type="text/css" rel="stylesheet" href="css/cm-overlay.css" />
<!-- font-awesome icons -->
<link href="css/font-awesome.css" rel="stylesheet">
<!-- //font-awesome icons -->
<!-- font -->
<link
	href="//fonts.googleapis.com/css?family=Poppins:300,400,500,600,700"
	rel="stylesheet">
<link
	href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic'
	rel='stylesheet' type='text/css'>
<!-- //font -->

<style>
.dropbtn {
	background-color: #4CAF50;
	color: white;
	padding: 16px;
	font-size: 16px;
	border: none;
}

.dropdown {
	position: relative;
	display: inline-block;
}

.dropdown-content {
	display: none;
	position: absolute;
	background-color: #f1f1f1;
	min-width: 160px;
	box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
	z-index: 1;
}

.dropdown-content a {
	color: black;
	padding: 12px 16px;
	text-decoration: none;
	display: block;
}

.dropdown-content a:hover {
	background-color: #ddd;
}

.dropdown:hover .dropdown-content {
	display: block;
}

.dropdown:hover .dropbtn {
	background-color: #3e8e41;
}
</style>

<script src="js/jquery-1.11.1.min.js"></script>
<script src="js/bootstrap.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event) {
			event.preventDefault();
			$('html,body').animate({
				scrollTop : $(this.hash).offset().top
			}, 1000);
		});
	});
</script>
<!-- animation -->
<link href="css/animate.css" rel="stylesheet" type="text/css"
	media="all">
<script src="js/wow.min.js"></script>
<script>
	new WOW().init();
</script>
<!-- //animation -->
<script>
	$(document).ready(function() {
		$("#owl-demo").owlCarousel({

			autoPlay : 3000, //Set AutoPlay to 3 seconds
			autoPlay : true,
			items : 3,
			itemsDesktop : [ 640, 5 ],
			itemsDesktopSmall : [ 414, 4 ]

		});

	});
</script>


<%
	HttpSession session = request.getSession(false);
	if (session != null) {
%>
</head>
<body>
	<!-- banner -->
	<div class="banner">
		<!--header-->
		<div class="header">
			<div class="container">
				<nav class="navbar navbar-default">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle" data-toggle="collapse"
							data-target="#bs-example-navbar-collapse-1">
							<span class="sr-only">Toggle navigation</span> <span
								class="icon-bar"></span> <span class="icon-bar"></span> <span
								class="icon-bar"></span>
						</button>
						<h1>
							<a href="#"><%=session.getAttribute("username")%></a>
						</h1>
						<!-- Enter name of user -->
					</div>
					<br>
					<!--navbar-header-->
					<div class="collapse navbar-collapse"
						id="bs-example-navbar-collapse-1">
						<ul class="nav navbar-nav navbar-right">
							<li><a href="Deposit/index.jsp">Deposit</a></li>
							<li><a href="Withdrawal/index.jsp">Withdrawal</a></li>
							<li><a href="ChequeBookServlet">Cheque Book Request</a></li>
							<li><a href="#" data-toggle="modal" data-target="#myModal">Transactions</a></li>
							<li><a href="ChangePhoneNumberServlet">Change PhoneNumber</a></li>
							<li><a href="PinReset/index.jsp">Reset Pin</a></li>
							<li><div class="dropdown">
									<a href="#"> <span class="glyphicon glyphicon-envelope"></span>
									</a>
									<%
									   String otp=(String)session.getAttribute("otp");
									   String msg="";
									   String link="";
									  
									   session.removeAttribute("otp");
									  if(otp!=null)
									  {
										  msg="Your OTP is \n"+otp;
										  link="ChangePhoneNumber/index.jsp";
									  }
									  else
									  {
										  msg="Please request for OTP";
										  link="homepage.jsp";
									  }
									%>
									<div class="dropdown-content">
										<a href="<%=link%>"><%=msg %></a>
									</div>
									
									<%
									   msg="";
									link="";
									%>
								</div></li>
								<li><div class="dropdown">
									<a href="#"> <span class="glyphicon glyphicon-user"></span>
									</a>
									<div class="dropdown-content">
										<a href="logout.jsp">LOGOUT</a>
									</div>
								</div></li>
						</ul>
						<div class="clearfix"></div>
					</div>
				</nav>
			</div>
		</div>
		<!--//header-->
		<div class="w3layouts-banner-info">
			<div class="container">
				<div class="w3layouts-banner-slider">
					<div class="slider">
						<div class="callbacks_container">
							<ul class="rslides callbacks callbacks1" id="slider4">
								<li>
									<div class="agileits-banner-info">
										<h3>Get reliable help with your credit card processing
											needs</h3>
										<p>Donec tellus metus, ornare et mollis ut, maximus id
											nisi. Quisque scelerisque accumsan sem nec ullamcorper. Cras
											sed purus eget augue egestas commodo. Sed erat magna,
											pharetra aliquet mattis mollis, maximus eget lacus.</p>
									</div>
								</li>
								<li>
									<div class="agileits-banner-info">
										<h3>Accept Credit Cards On Your Smartphone Today!</h3>
										<p>Sed erat magna, pharetra aliquet mattis mollis, maximus
											eget lacus. Donec tellus metus, ornare et mollis ut, maximus
											id nisi. Quisque scelerisque accumsan sem nec ullamcorper.
											Cras sed purus eget augue egestas commodo.</p>
									</div>
								</li>
							</ul>
						</div>
						<script src="js/responsiveslides.min.js"></script>
						<script>
							// You can also use "$(window).load(function() {"
							$(function() {
								// Slideshow 4
								$("#slider4")
										.responsiveSlides(
												{
													auto : true,
													pager : true,
													nav : false,
													speed : 500,
													namespace : "callbacks",
													before : function() {
														$('.events')
																.append(
																		"<li>before event fired.</li>");
													},
													after : function() {
														$('.events')
																.append(
																		"<li>after event fired.</li>");
													}
												});

							});
						</script>
						<!--banner Slider starts Here-->
					</div>
				</div>
			</div>
		</div>
		<div class="bounce animated">
			<a href="#welcome" class="scroll">
				<div class="mouse"></div>
			</a>
		</div>
	</div>
	<!-- //banner -->
	<!-- welcome -->
	<div class="welcome" id="welcome">
		<div class="container">
			<div class="w3-welcome-heading">
				<h2>Welcome</h2>
			</div>
			<div class="w3l-welcome-info">
				<div class="col-sm-6 welcome-grids">
					<div class="welcome-img">
						<img src="images/4.jpg" class="img-responsive zoom-img" alt="">
					</div>
				</div>
				<div class="col-sm-6 welcome-grids">
					<div class="welcome-img">
						<img src="images/6.jpg" class="img-responsive zoom-img" alt="">
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
			<div class="w3l-welcome-text">
				<p>Nam libero tempore cum soluta nobis est eligendi optio cumque
					nihil impedit quo minus id quod maxime placeat facere possimus
					omnis optio cumque nihil impedit quo minus id quod maxime placeat
					facere possimus.Sed ut perspiciatis unde omnis iste natus error sit
					voluptatem accusantium doloremque laudantium, totam rem aperiam,
					eaque ipsa quae ab illo inventore veritatis et quasi architecto
					beatae vitae</p>
			</div>
		</div>
	</div>
	<!-- //welcome -->
	<!-- about -->
	<div class="about" id="about">
		<div class="container">
			<div class="w3-welcome-heading">
				<h3>About Us</h3>
			</div>
			<div class="w3ls-about-grids">
				<div class="col-md-6 about-right">
					<img src="images/9.jpg" alt="">
				</div>
				<div class="col-md-6 about-left">
					<h4>Sed tincidunt lorem</h4>
					<p>
						Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed
						tincidunt lorem sed velit fermentum lobortis, eget placerat mauris
						sed lectus tellus <span> Fusce eu semper lacus, sodales id
							elit a, feugiat porttitor nulla. Sed porta magna vitae nisl
							vulputate lacinia.</span>
					</p>
					<ul>
						<li><span class="glyphicon glyphicon-share-alt"></span> Duis
							aute irure dolor in reprehenderit voluptate</li>
						<li><span class="glyphicon glyphicon-share-alt"></span>
							Excepteur sint occaecat cupidatat non proident</li>
						<li><span class="glyphicon glyphicon-share-alt"></span> Sunt
							in culpa qui officia deserunt mollit</li>
						<li><span class="glyphicon glyphicon-share-alt"></span> Duis
							aute irure dolor in reprehenderit voluptate</li>
						<li><span class="glyphicon glyphicon-share-alt"></span>
							Excepteur sint occaecat cupidatat non proident</li>
					</ul>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!-- //about -->
	<!-- services -->
	<div class="services" id="services">
		<div class="container">
			<div class="w3-welcome-heading">
				<h3>Our services</h3>
			</div>
			<div class="agileits-services-grids">
				<div class="col-md-8 agileits-services-left">
					<h4>Services Overview</h4>
					<div class="agileits-services-text">
						<p>Nam libero tempore cum soluta nobis est eligendi optio
							cumque nihil impedit quo minus id quod maxime placeat facere
							possimus omnis optio cumque nihil impedit quo minus id quod
							maxime placeat facere possimus.</p>
					</div>
					<div class="credit-grids">
						<h5>Credit Cards:</h5>
						<div class="credit-grid-left">
							<div class="credit-grid">
								<img src="images/c2.jpg" alt="" />
								<h6>Visa</h6>
								<p>Nam libero tempore cum soluta nobis est</p>
							</div>
							<div class="credit-grid">
								<img src="images/c3.jpg" alt="" />
								<h6>MasterCard</h6>
								<p>Nam libero tempore cum soluta nobis est</p>
							</div>
							<div class="credit-grid">
								<img src="images/c4.jpg" alt="" />
								<h6>MasterCard</h6>
								<p>Nam libero tempore cum soluta nobis est</p>
							</div>
							<div class="clearfix"></div>
						</div>
					</div>
					<div class="credit-grids debit-grids">
						<h5>Debit Cards:</h5>
						<div class="debit-grids-text">
							<p>Morbi nec justo ut ex rhoncus luctus. Duis id ex egestas,
								tempus lorem sed, porta urna. Duis sodales eleifend laoreet.
								Vestibulum luctus venenatis massa, in vulputate mi porta ac.</p>
						</div>
						<div class="w3-services-grids">
							<div class="col-md-4 w3l-services-grid">
								<div class="w3ls-services-img">
									<i class="fa fa-money" aria-hidden="true"></i>
								</div>
								<div class="agileits-services-info">
									<h4>Praesent tempor</h4>
								</div>
							</div>
							<div class="col-md-4 w3l-services-grid">
								<div class="w3ls-services-img">
									<i class="fa fa-credit-card" aria-hidden="true"></i>
								</div>
								<div class="agileits-services-info">
									<h4>Praesent tempor</h4>
								</div>
							</div>
							<div class="col-md-4 w3l-services-grid">
								<div class="w3ls-services-img">
									<i class="fa fa-line-chart" aria-hidden="true"></i>
								</div>
								<div class="agileits-services-info">
									<h4>Praesent tempor</h4>
								</div>
							</div>
							<div class="clearfix"></div>
						</div>
					</div>
				</div>
				<div class="col-md-4 agileits-services-right">
					<h4>Marketing Services</h4>
					<div class="services-two-grids">
						<div class="agileinfo-services-right">
							<img src="images/10.jpg" alt="" />
							<h6>Maecenas sollicitudin eros lectus, a rutrum nisi
								vulputate quis. Proin tempus, lectus vitae gravida suscipit</h6>
						</div>
						<!-- date -->
						<div id="design" class="date">
							<div id="cycler">
								<div class="date-text">
									<a href="#" data-toggle="modal" data-target="#myModal"><i
										class="fa fa-arrow-right" aria-hidden="true"></i> Lorem ipsum
										dolor sit amet,</a>
								</div>
								<div class="date-text">
									<a href="#" data-toggle="modal" data-target="#myModal"><i
										class="fa fa-arrow-right" aria-hidden="true"></i> Cras
										vestibulum dapibus <span class="blinking"><img
											src="images/new.png" alt="" /></span></a>
								</div>
								<div class="date-text">
									<a href="#" data-toggle="modal" data-target="#myModal"><i
										class="fa fa-arrow-right" aria-hidden="true"></i> Fusce id
										molestie mauris</a>
								</div>
								<div class="date-text">
									<a href="#" data-toggle="modal" data-target="#myModal"><i
										class="fa fa-arrow-right" aria-hidden="true"></i> Aliquam
										vulputate arcu enim <span class="blinking"><img
											src="images/new.png" alt="" /></span></a>
								</div>
								<div class="date-text">
									<a href="#" data-toggle="modal" data-target="#myModal"><i
										class="fa fa-arrow-right" aria-hidden="true"></i> Donec ac
										turpis aliquet</a>
								</div>
								<div class="date-text">
									<a href="#" data-toggle="modal" data-target="#myModal"><i
										class="fa fa-arrow-right" aria-hidden="true"></i> Morbi nec
										justo ut ex rhoncus luctus</a>
								</div>
							</div>
							<script>
								function blinker() {
									$('.blinking').fadeOut(500);
									$('.blinking').fadeIn(500);
								}
								setInterval(blinker, 1000);
							</script>
							<script>
								function cycle($item, $cycler) {
									setTimeout(cycle, 2000, $item.next(),
											$cycler);

									$item.slideUp(1000, function() {
										$item.appendTo($cycler).show();
									});
								}
								cycle($('#cycler div:first'), $('#cycler'));
							</script>
						</div>
						<!-- //date -->
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!-- //services -->
	<!-- works -->
	<div class="jarallax blog" id="blog">
		<div class="container">
			<div class="w3-welcome-heading">
				<h3>Our Blog</h3>
			</div>
			<div class="wthree-blog-grids">
				<div class="col-md-6 w3-agileits-blog-grid">
					<div class="col-sm-4 blog-left">
						<h4>24/09</h4>
						<ul>
							<li>Posted : <a href="#">Admin</a></li>
							<li>Likes : 231
							<li>
							<li>Comments : (24)</li>
						</ul>
					</div>
					<div class="col-sm-8 blog-right">
						<a href="#" data-toggle="modal" data-target="#myModal">Lorem
							ipsum dolor sit amet, consectetur adipiscing elit. Quisque
							imperdiet luctus gravida.</a>
						<p>Sed ut feugiat felis. Morbi tempor ut nibh id consectetur.
							Morbi turpis arcu, interdum at feugiat non, iaculis id dui. Cras
							vestibulum dapibus volutpat. Fusce id molestie mauris, nec
							pulvinar nibh.</p>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="col-md-6 w3-agileits-blog-grid">
					<div class="col-sm-4 blog-left">
						<h4>09/12</h4>
						<ul>
							<li>Posted : <a href="#">Admin</a></li>
							<li>Likes : 102
							<li>
							<li>Comments : (14)</li>
						</ul>
					</div>
					<div class="col-sm-8 blog-right">
						<a href="#" data-toggle="modal" data-target="#myModal">Etiam
							ut nibh quis magna placerat euismod ac id eros. Cras eleifend
							nulla vel eros blandit.</a>
						<p>Duis sodales eleifend laoreet. Vestibulum luctus venenatis
							massa, in vulputate mi porta ac. Maecenas sollicitudin eros
							lectus, a rutrum nisi vulputate quis. Proin tempus, lectus vitae
							gravida</p>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!-- //works -->
	<!-- news -->
	<div class="news" id="news">
		<div class="container">
			<div class="w3-welcome-heading">
				<h3>News & Events</h3>
			</div>
			<div class="w3ls-news-grids">
				<div class="news-right">
					<div class="col-md-4 news-right-grid">
						<div class="agile-news-info">
							<img src="images/n1.jpg" alt=" " class="img-responsive">
							<h4>
								<a href="#" data-toggle="modal" data-target="#myModal">Sunt
									in culpa qui officia velit</a>
							</h4>
							<span>19th June | 10:00 - 12:00</span>
							<p>Integer interdum eros vitae sem ultrices, sed eleifend
								tellus tincidunt. Nam nisl arcu, porttitor sit amet</p>
							<div class="agileinfo-news-button">
								<a href="#" class="hvr-shutter-in-horizontal"
									data-toggle="modal" data-target="#myModal">More</a>
							</div>
						</div>
					</div>
					<div class="col-md-4 news-right-grid">
						<div class="agile-news-info">
							<img src="images/n2.jpg" alt=" " class="img-responsive">
							<h4>
								<a href="#" data-toggle="modal" data-target="#myModal">Neque
									porro quisquam est</a>
							</h4>
							<span>24th Sept | 09:00 - 11:00</span>
							<p>Integer interdum eros vitae sem ultrices, sed eleifend
								tellus tincidunt. Nam nisl arcu, porttitor sit amet</p>
							<div class="agileinfo-news-button">
								<a href="#" class="hvr-shutter-in-horizontal"
									data-toggle="modal" data-target="#myModal">More</a>
							</div>
						</div>
					</div>
					<div class="col-md-4 news-right-grid">
						<div class="agile-news-info">
							<img src="images/n3.jpg" alt=" " class="img-responsive">
							<h4>
								<a href="#" data-toggle="modal" data-target="#myModal">Etiam
									ut nibh quis magna</a>
							</h4>
							<span>04th Oct | 12:00 - 02:00</span>
							<p>Integer interdum eros vitae sem ultrices, sed eleifend
								tellus tincidunt. Nam nisl arcu, porttitor sit amet</p>
							<div class="agileinfo-news-button">
								<a href="#" class="hvr-shutter-in-horizontal"
									data-toggle="modal" data-target="#myModal">More</a>
							</div>
						</div>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="clearfix"></div>
			</div>
			<!-- modal -->
			<div class="modal about-modal fade" id="myModal" tabindex="-1"
				role="dialog">
				<div class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
							<h4 class="modal-title">
								<span>Transactions</span>
							</h4>
						</div>
						<div class="modal-body">
							<div class="agileits-w3layouts-info">
								<img src="images/g2.jpg" alt="" />
								<pre>
									<a href="MiniStatementServlet">Mini Statement</a><br>
								<a href="CurrentBalanceServlet">Current Balance</a>
								</pre>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- //modal -->
		</div>
	</div>
	<!-- //news -->
	<!-- feedback -->
	<div class="jarallax feedback">
		<div class="container">
			<div class="w3-welcome-heading">
				<h3>Clients Feedback</h3>
			</div>
			<div class="agileits-feedback-grids">
				<div id="owl-demo" class="owl-carousel owl-theme">
					<div class="item">
						<div class="feedback-info">
							<div class="feedback-top">
								<p>Sed semper leo metus, a lacinia eros semper at. Etiam
									sodales orci sit amet vehicula pellentesque.</p>
							</div>
							<div class="feedback-grids">
								<div class="feedback-img">
									<img src="images/f1.jpg" alt="" />
								</div>
								<div class="feedback-img-info">
									<h5>Mary Jane</h5>
									<p>Vestibulum</p>
								</div>
								<div class="clearfix"></div>
							</div>
						</div>
					</div>
					<div class="item">
						<div class="feedback-info">
							<div class="feedback-top">
								<p>Sed semper leo metus, a lacinia eros semper at. Etiam
									sodales orci sit amet vehicula pellentesque.</p>
							</div>
							<div class="feedback-grids">
								<div class="feedback-img">
									<img src="images/f2.jpg" alt="" />
								</div>
								<div class="feedback-img-info">
									<h5>Peter guptill</h5>
									<p>Vestibulum</p>
								</div>
								<div class="clearfix"></div>
							</div>
						</div>
					</div>
					<div class="item">
						<div class="feedback-info">
							<div class="feedback-top">
								<p>Sed semper leo metus, a lacinia eros semper at. Etiam
									sodales orci sit amet vehicula pellentesque.</p>
							</div>
							<div class="feedback-grids">
								<div class="feedback-img">
									<img src="images/f3.jpg" alt="" />
								</div>
								<div class="feedback-img-info">
									<h5>Steven Wilson</h5>
									<p>Vestibulum</p>
								</div>
								<div class="clearfix"></div>
							</div>
						</div>
					</div>
					<div class="item">
						<div class="feedback-info">
							<div class="feedback-top">
								<p>Sed semper leo metus, a lacinia eros semper at. Etiam
									sodales orci sit amet vehicula pellentesque.</p>
							</div>
							<div class="feedback-grids">
								<div class="feedback-img">
									<img src="images/f1.jpg" alt="" />
								</div>
								<div class="feedback-img-info">
									<h5>Mary Jane</h5>
									<p>Vestibulum</p>
								</div>
								<div class="clearfix"></div>
							</div>
						</div>
					</div>
					<div class="item">
						<div class="feedback-info">
							<div class="feedback-top">
								<p>Sed semper leo metus, a lacinia eros semper at. Etiam
									sodales orci sit amet vehicula pellentesque.</p>
							</div>
							<div class="feedback-grids">
								<div class="feedback-img">
									<img src="images/f2.jpg" alt="" />
								</div>
								<div class="feedback-img-info">
									<h5>Peter guptill</h5>
									<p>Vestibulum</p>
								</div>
								<div class="clearfix"></div>
							</div>
						</div>
					</div>
					<div class="item">
						<div class="feedback-info">
							<div class="feedback-top">
								<p>Sed semper leo metus, a lacinia eros semper at. Etiam
									sodales orci sit amet vehicula pellentesque.</p>
							</div>
							<div class="feedback-grids">
								<div class="feedback-img">
									<img src="images/f3.jpg" alt="" />
								</div>
								<div class="feedback-img-info">
									<h5>Steven Wilson</h5>
									<p>Vestibulum</p>
								</div>
								<div class="clearfix"></div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- //feedback -->
	<!-- subscribe -->
	<div class="wthree-subscribe">
		<div class="container">
			<div class="w3-welcome-heading">
				<h3>Newsletter</h3>
			</div>
			<div class="w3-agileits-subscribe-form">
				<form action="#" method="post">
					<input type="text" placeholder="Subscribe" name="Subscribe"
						required="">
					<button class="btn1">Subscribe</button>
				</form>
			</div>
		</div>
	</div>
	<!-- //subscribe -->
	<!-- map -->
	<div class="map-grid">
		<iframe
			src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1859251.8642025779!2d-76.08274894689792!3d40.06224332601239!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c0fb959e00409f%3A0x2cd27b07f83f6d8d!2sNew+Jersey%2C+USA!5e0!3m2!1sen!2sin!4v1474436926209"
			style="border: 0" allowfullscreen></iframe>
	</div>
	<!-- //map -->
	<!-- contact -->
	<div class="contact" id="contact">
		<div class="container">
			<div class="w3-welcome-heading">
				<h3>Contact Us</h3>
			</div>
			<div class="agile-contact-grids">
				<div class="col-md-7 contact-form">
					<form action="#" method="post">
						<input type="text" name="First Name" placeholder="First Name"
							required=""> <input type="text" class="email"
							name="Last Name" placeholder="Last Name" required=""> <input
							type="email" class="email" name="Email" placeholder="Email"
							required="">
						<textarea name="Message" placeholder="Message" required=""></textarea>
						<input type="submit" value="SUBMIT">
					</form>
				</div>
				<div class="col-md-5 agileits-w3layouts-address">
					<div class="agileits-w3layouts-address-top">
						<h5>Get in touch</h5>
						<ul>
							<li>+91 9024467543</li>
							<li>+91 6377170331</li>
						</ul>
					</div>
					<div class="agileits-w3layouts-address-top">
						<h5>Address</h5>
						<ul>
							<li>123 Fourth Avenue,</li>
							<li>lacinia eros 98104,</li>
							<li>New Jersey,</li>
							<li>United States.</li>
						</ul>
					</div>
					<div class="agileits-w3layouts-address-top">
						<h5>Email</h5>
						<ul>
							<li><a href="mailto:info@example.com"> mail@example.com</a></li>
						</ul>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!-- //contact -->
	<!-- footer -->
	<div class="jarallax footer">
		<div class="container">
			<div class="footer-logo">
				<h3>
					<a href="index.html">Net <span>Banking</span></a>
				</h3>
			</div>
			<div class="agileinfo-social-grids">
				<h4>We are social</h4>
				<div class="border"></div>
				<ul>
					<li><a href="#"><i class="fa fa-facebook"></i></a></li>
					<li><a href="#"><i class="fa fa-twitter"></i></a></li>
					<li><a href="#"><i class="fa fa-rss"></i></a></li>
					<li><a href="#"><i class="fa fa-vk"></i></a></li>
				</ul>
			</div>
			<div class="copyright">
				<p>� Deepak Sharma</p>
			</div>
		</div>
	</div>
	<!-- //copyright -->
	<script src="js/jarallax.js"></script>
	<script src="js/SmoothScroll.min.js"></script>
	<script type="text/javascript">
		/* init Jarallax */
		$('.jarallax').jarallax({
			speed : 0.5,
			imgWidth : 1366,
			imgHeight : 768
		})
	</script>
	<script type="text/javascript" src="js/move-top.js"></script>
	<script type="text/javascript" src="js/easing.js"></script>
	<!-- here stars scrolling icon -->
	<script type="text/javascript">
		$(document).ready(function() {
			/*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
			 */

			$().UItoTop({
				easingType : 'easeOutQuart'
			});

		});
	</script>
	<!-- //here ends scrolling icon -->
	<script src="js/owl.carousel.js"></script>


</body>
</html>
<%
	} else {
		response.sendRedirect("index.jsp");
	}
%>