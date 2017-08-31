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

<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,600,700|Pacifico' rel='stylesheet' type='text/css'>
  <title><%=profile_name%>'s Profile</title>
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

<script type="text/javascript">
$(function(){
    $("input").prop('required',true);
    $("textarea").prop('required',true);
});
</script>

<style type="text/css">
@font-face {
  font-family: "FontAwesome";
  font-style: normal;
  font-weight: normal;
  src: url("/fonts/fontawesome-webfont.eot"); 
  src: url("fonts/fontawesome-webfont.woff");
  src: url("fonts/fontawesome-webfont.ttf");
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
   <div id="Frame">

      <div id="Body">
         <div class="container">
            <div class="Column PanelColumn" id="Panel" style="margin-top: 100px;">
                  <div class="Photo PhotoWrap PhotoWrapLarge fesb ">
      <img src="./logo/discussion_logo.png" class="ProfilePhotoLarge" />   </div>
		<h1 class="H" style="text-align: center;"><%=profile_name%> <%=profileLast_name%><span class="Gloss"></span></h1>
            <br><div style="text-align: center;"><a href="editProfile.jsp">Edit your profile</a></div>
            </div>
            <div class="Column ContentColumn" id="Content"><div class="ProfileOptions">
    </div><br><br>
<div class="Profile">
   <div class="User">
   <div class="About P">
   <dl class="About">
      <dt class="Name">Email</dt>
      <dd class="Name" itemprop="name"><%=email_session%></dd>
      
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
		<div class="Empty"><%=about_yourself%></div>
	</li>
</ul><br><br>

<h2 class="H">Website</h2>
<ul class="DataList Activities">
	<li>
		<div class="Empty"><a href="#"><%=my_website%></a></div>
	</li>
</ul>
</div>
</div>
         </div>
      </div>
   </div><br><br><br>
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