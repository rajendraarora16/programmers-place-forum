<!-- This social site is made by Rajendra Arora, Visit here at http://rajendra.apphb.com/-->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page language="java" import="java.sql.*" %>
    
<%
    if ((session.getAttribute("user_email") == null) || (session.getAttribute("user_email") == "")) {
    	response.sendRedirect("home.jsp");
%>
<%
	} else
%>    

<% String profile_name=(String)session.getAttribute("first_name");%>
<% String profileLast_name=(String)session.getAttribute("last_name");%>
<% String email_session=(String)session.getAttribute("user_email");%>

<%
try{
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://127.6.200.2:3306/forum", "adminWaWcWr4", "wDaTQmcx9_9K");
    String sql="select * from login_system where email='"+email_session+"'";
    PreparedStatement pstmt=con.prepareStatement(sql);
    ResultSet rs=pstmt.executeQuery();    
    while(rs.next())
    {
    	
    	String first_name=rs.getString("first_name");
    	String last_name=rs.getString("last_name");
    	String gender=rs.getString("gender");
    	String about_yourself=rs.getString("about_yourself");
    	String my_website=rs.getString("my_website");
    	
%>

    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,600,700|Pacifico' rel='stylesheet' type='text/css'>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title><%=profile_name%>, Change your profile today.</title>
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

input[type="text"] {
    border: 1px solid rgb(221, 221, 221);
    box-shadow: 0px 1px 2px rgba(0, 0, 0, 0.07) inset;
    background-color: rgb(255, 255, 255);
    color: rgb(51, 51, 51);
    outline: 0px none;
    transition: border-color 0.05s ease-in-out 0s;
    padding: 4px;
}

input[type="text"] {
    -moz-box-sizing: border-box;
}

input[type="text"] {
    font-size: 24px;
    width: 65%;
    padding: 10px;
    margin: 2px 6px 16px 0px;
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

</head>
<body id="dashboard_profile_index" class="Dashboard Profile Index  Profile Section-Profile">



<header style="height: 50px;">
<div class="container">
	<div style="color: white; font-size: 25px;padding: 10px;float: left;">
		<a href="index.jsp" style="text-decoration: none; color:white;">
		<span style="font-size: 20px;"><i class="fa fa-twitch" style="font-size: 30px;"></i>
		Programmer's Place</span>
		</a>
	</div>
	<div style="float:right;">
		<!-- Clickable Nav -->
		<div class="click-nav">
			<ul class="no-js">
				<li>
					<a class="clicker" style="background-color: black;"><img src="drop_down/img/i-1.png" alt="Icon">Welcome <%=profile_name%></a>
					<ul>
						<li><a href="viewProfile.jsp"><img src="${pageContext.request.contextPath}/drop_down/img/i-10.png" alt="Icon">View My Profile</a></li>
						<li><a href="askQuestion.jsp"><img src="${pageContext.request.contextPath}/drop_down/img/i-2.png" alt="Icon">Ask Question</a></li>
						<li><a href="logout.jsp"><img src="${pageContext.request.contextPath}/drop_down/img/i-6.png" alt="Icon">Sign out</a></li>
						<li><a href="followRules.jsp"><img src="${pageContext.request.contextPath}/drop_down/img/i-5.png" alt="Icon">Follow rules</a></li>
					</ul>
				</li>
			</ul>
		</div>
		<!-- /Clickable Nav -->
	</div>
</div>
</header> 
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script>
		$(function() {
			// Clickable Dropdown
			$('.click-nav > ul').toggleClass('no-js js');
			$('.click-nav .js ul').hide();
			$('.click-nav .js').click(function(e) {
				$('.click-nav .js ul').slideToggle(200);
				$('.clicker').toggleClass('active');
				e.stopPropagation();
			});
			$(document).click(function() {
				if ($('.click-nav .js ul').is(':visible')) {
					$('.click-nav .js ul', this).slideUp();
					$('.clicker').removeClass('active');
				}
			});
		});
</script>

   <div id="Frame">


<form action="updateProfileProcess.jsp" method="post">
      <div id="Body">
         <div class="container">
            <div class="Column PanelColumn" id="Panel" style="margin-top: 100px;">
                  <div class="Photo PhotoWrap PhotoWrapLarge fesb ">
      				  <img src="./logo/discussion_logo.png" class="ProfilePhotoLarge" />
      				  <h1 class="H" style="text-align: center;"><%=first_name%> <%=last_name%><span class="Gloss"></span></h1><br><br>
      			  </div>
            </div>
            <div class="Column ContentColumn" id="Content"><div class="ProfileOptions">
    </div><br><br>
<div class="Profile">
   <div class="User">
   <div class="About P">
   <dl class="About">
      <dt class="Name">Email</dt>
      <dd class="Name"><%=email_session%></dd>
      
      <dt class="Roles">Gender</dt>
      <dd class="Roles"><%=gender%></dd>
      
      <dt class="Roles">Roles</dt>
      <dd class="Roles">Member</dd>
   </dl>
   <div class="ssclearl"></div>
</div>
</div>

<h2 class="H">Activity</h2>

<ul class="DataList Activities">
	<li>
		<h3>About yourself:</h3>
		<textarea col="20" row="2" name="about_yourself" required><%=about_yourself%></textarea>
	</li>
</ul><br>

<h2 class="H">Your website</h2>
<ul class="DataList Activities">
	<li>
		<input type="text" value="<%=my_website%>" name="my_website" required/>
	</li>
</ul>
</div>
</div>
         </div>
      </div><br><br>
      <div style="text-align: center;">
		<input type="submit" value="Update profile now" />
   	  </div>
</form>
   </div>
   <br><br><br>
   <div style="text-align:center;">
	Powered by <a href="http://about.me/rajendraarora16/">Programmer's Place</a>.
</div>

<%
}
    }
    catch(Exception e){
        e.printStackTrace();
    }
%> 
 
 
</body>
</html>