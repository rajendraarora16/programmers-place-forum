<!-- This social site is made by Rajendra Arora, Visit here at http://rajendra.apphb.com/-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
    if (!(session.getAttribute("user_email") == null) || (session.getAttribute("user_email") == "")) {
    	response.sendRedirect("index.jsp");
%>
<%
	} else
%>    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,600,700|Pacifico' rel='stylesheet' type='text/css'>
  <title>Get your account now, it is always free - Ask your question.</title>
<link rel="icon" type="image/png" href="${pageContext.request.contextPath}/logo/discussion_logo.png" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="icon" type="image/png" href="${pageContext.request.contextPath}/logo/discussion_logo.png" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css" media="all" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/overdose.css" media="all" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/custom.css" media="all" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/blue.css" media="all" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/elusive-webfont.css" media="all" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.css" media="all" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap-theme.css" media="all" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/drop_down/css/main.css"/>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/drop_down/css/demo.css"/>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/js/jquery-ui-1.8.17.custom.min.js?v=2.1.6" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/js/jquery.livequery.js?v=2.1.6" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/js/jquery.form.js?v=2.1.6" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/js/jquery.popup.js?v=2.1.6" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/js/jquery.gardenhandleajaxform.js?v=2.1.6" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/js/global.js?v=2.1.6" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/js/discussions.js?v=2.1.6" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/js/icheck.min.js?v=1.0" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/js/ichecken.js?v=1.0" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/js/jquery.nicescroll.min.js?v=1.0" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/js/jquery.nicescroll.plus.js?v=1.0" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/js/enable.js?v=1.0" type="text/javascript"></script>

<style type="text/css">
@font-face {
  font-family: "FontAwesome";
  font-style: normal;
  font-weight: normal;
  src: url("/fonts/fontawesome-webfont.eot"); 
  src: url("fonts/fontawesome-webfont.woff");
  src: url("fonts/fontawesome-webfont.ttf");
}

input[type="submit"] {
    transition: all 0.5s ease 0s;
    text-shadow: 0px 1px 0px rgba(255, 255, 255, 0.25);
    padding-right: 20px;
    padding-left: 20px;
    color: white;
    padding-top: 10px !important;
    padding-bottom: 13px !important;
    border-radius: 7px 7px 7px 7px;
    font-size: 16px;
    background-color: black;
    border: 2px solid black;
}

input[type=submit]:hover{
	transition: all 0.4s ease 0s;
	-webkit-box-shadow: 0px 0px 16px 0px rgba(50, 50, 50, 0.75);
	-moz-box-shadow:    0px 0px 16px 0px rgba(50, 50, 50, 0.75);
	box-shadow:         0px 0px 16px 0px rgba(50, 50, 50, 0.75);
	
}

</style>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/login_style.css"/>
<link rel='stylesheet' id='open-sans-css'  href='//fonts.googleapis.com/css?family=Open+Sans%3A300italic%2C400italic%2C600italic%2C300%2C400%2C600&#038;subset=latin%2Clatin-ext&#038;ver=4.1-alpha-20141011' type='text/css' media='all' />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/drop_down/css/main.css"/>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/drop_down/css/demo.css"/>
</head>
<body>

<header style="height: 50px;">
<div class="container">
	<div style="color: white; font-size: 25px;padding: 10px;float: left;">
		<a href="index.jsp" style="text-decoration: none; color:white;">
		<span style="font-size: 20px;"><i class="fa fa-twitch" style="font-size: 30px;"></i>
		Programmer's Place</span>
		</a>
	</div>
	<div style="float: right; padding: 20px;">
		<span style="color:white;"><a href="login.jsp" style="text-decoration: none;color:white;"><strong>Sign In</strong></a> or <a href="signup.jsp" style="text-decoration: none;color:white;"><strong>Sign Up</strong></a> Today!</span>
	</div>
</div>
</header>

	<div id="signup">
		<h1>Sign up Today in Programmer's place, it's free..</h1>
		<form id="signup_form" method="post" action="checkingMailExistOrNot.jsp">
			<p>
			<label>Email address:</label>
			<input type="email" class="signup" name="user_email" required/>
			</p>
			<p>
			<label>Password:</label>
			<input type="password" class="signup" name="user_password" required/>
			</p>
			<p>
			<label>First name:</label>
			<input type="text" class="signup" name="user_firstName" required/>
			</p>
			<p>
			<label>Last name:</label>
			<input type="text" class="signup" name="user_lastName" required/>
			</p>
			<p>
			<label>Gender:</label>&nbsp;&nbsp;
			<input type="radio" class="signup" name="user_gender" required value="male"/> Male
			<input type="radio" class="signup" name="user_gender" value="female"/> Female
			</p>
			<p>
			<label>Your website:</label>&nbsp;&nbsp;
			<input type="text" class="signup" name="my_website" required/>
			</p>
			<p>
			<label>Tell us about yourself:</label>&nbsp;&nbsp;
			<textarea rows="4" cols="20" name="about_myself" required></textarea>
			</p>
			<br><br>
			<p style="font-size: 17px;">
			By clicking 'SignUp', you're agreed with our <a href="followRules.jsp">rules</a>.
			</p>
			<br>
			
			<div id="submit_btn">
			<input type="submit" value="Sign Up now" />
			</div><br>
			
			<p style="text-align: center;">
			<label>Already have an account? <a href="login.jsp" style="text-decoration: none;">login now</a>.</label>
			</p>
		</form>
	</div><br><br>
	<div style="text-align:center;">
		
	</div>
</body>
</html>
