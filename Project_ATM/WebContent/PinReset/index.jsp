<%@page import="java.sql.Date"%>
<%@page import="java.time.LocalDate"%>
<%@page import="java.time.LocalDateTime"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" session="false" isELIgnored="false"%>
<!--Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<%
  HttpSession session=request.getSession();
   if(session!=null){
%>
<!DOCTYPE HTML>
<html lang="zxx">

<head>
	<title>Pin Reset</title>
	<!-- Meta tag Keywords -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta charset="UTF-8" />
	<meta name="keywords" content="Classic Register Form Responsive Widget,Login form widgets, Sign up Web forms , Login signup Responsive web form,Flat Pricing table,Flat Drop downs,Registration Forms,News letter Forms,Elements"
	/>
	<script>
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
	<!-- Meta tag Keywords -->
	<!-- css files -->
	<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
	<!-- Style-CSS -->
	<link rel="stylesheet" href="css/font-awesome.css">
	<!-- Font-Awesome-Icons-CSS -->
	<!-- //css files -->
	<!-- web-fonts -->
	<link href="//fonts.googleapis.com/css?family=Oswald:200,300,400,500,600,700" rel="stylesheet">
	<link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">
	<!-- //web-fonts -->
</head>

<body>
	<!--header-->
	<h1>
		<span>Pin</span>Reset
		<span>F</span>orm</h1>
		<h3><font color="red">${param.msg}</font></h3>
	<!--//header-->
	<!-- content -->
	<div class="main-content-agile">
		<div class="sub-main-w3">
			<form action="pinChange.jsp" method="post">
				<div class="form-style-agile">
					<label>Old Pin</label>
					<div class="pom-agile">
						<input placeholder="Old Pin" name="oldPin" type="number" required>
						<span class="fa fa-user-o" aria-hidden="true"></span>
					</div>
				</div>
				<div class="form-style-agile">
					<label>New Pin</label>
					<div class="pom-agile">
						<input placeholder="New Pin" name="newPin" type="number" required>
						<span class="fa fa-user-o" aria-hidden="true"></span>
					</div>
				</div>
				<div class="form-style-agile">
					<label>Confirm Pin</label>
					<div class="pom-agile">
						<input placeholder="Confirm Pin" name="confirmPin" type="number" id="password1" required="true">
						<span class="fa fa-key" aria-hidden="true"></span>
					</div>
				</div>
				
				<div class="clear"></div>
				<input type="submit" value="Change Pin">
			</form>
		</div>
	</div>
	<!-- //content -->
	<!--footer-->
	<div class="footer">
		<h2>&copy; Deepak Sharma
		</h2>
	</div>
	<!--//footer-->


	<!-- password-script -->
	<script>
		window.onload = function () {
			document.getElementById("password1").onchange = validatePassword;
			document.getElementById("password2").onchange = validatePassword;
		}

		function validatePassword() {
			var pass2 = document.getElementById("password2").value;
			var pass1 = document.getElementById("password1").value;
			if (pass1 != pass2)
				document.getElementById("password2").setCustomValidity("Passwords Don't Match");
			else
				document.getElementById("password2").setCustomValidity('');
			//empty string means no validation error
		}
	</script>
	<!-- //password-script -->

</body>

</html>
<%
   }
   else
   {
	   response.sendRedirect("../index.jsp");
   }
%>