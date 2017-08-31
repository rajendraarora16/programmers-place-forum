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

<% String question_id=request.getParameter("id"); %>
<% String welcome_name=(String)session.getAttribute("first_name"); %>

<%
	
    try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://127.6.200.2:3306/forum", "adminWaWcWr4", "wDaTQmcx9_9K");
        Statement st=con.createStatement();
        ResultSet rs=st.executeQuery("select * from thread_question where question_id="+question_id);
            while(rs.next()){
            	
            	int user_id=rs.getInt("user_id");
            	String first_name=rs.getString("first_name");
            	String last_name=rs.getString("last_name");
            	String thread_title=rs.getString("question_title");
            	String thread_question=rs.getString("question");
            	String thread_dateTime=rs.getString("question_dateTime");
%>
    
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,600,700|Pacifico' rel='stylesheet' type='text/css'>
  <title>What happened? Please tell us in briefly..</title>
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


<link rel="stylesheet" type="text/css" href="wmd.css" />
<link rel="stylesheet" type="text/css" href="style_editor.css" />
<script type="text/javascript" src="showdown.js"></script>


</head>
<body id="vanilla_discussions_index" class="Vanilla Discussions index  Section-DiscussionList" style="background-color: rgb(233, 234, 237);">

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
					<a class="clicker" style="background-color: black;"><img src="drop_down/img/i-1.png" alt="Icon">Welcome <%=welcome_name %></a>
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
      <div id="Body">
         <div class="container">
            <h2>Hello, <%=welcome_name%>!.. <br><br>Please tell us, what's wrong here?</h2>
            <p>Something went wrong in this question "<a href="showThread.jsp?id=<%=question_id%>"><%=thread_title%></a>"?</p>
            <br><br><br>
            
            <form method="post" action="moderator_message.jsp?id=<%=question_id%>">
        <div>
        <div id="wmd-editor" class="wmd-panel">
			<div id="wmd-button-bar"></div>
			<textarea id="wmd-input" name="content"></textarea>
		</div>
		
		<div id="wmd-preview" class="wmd-panel"></div><br><br>

		<script type="text/javascript" src="wmd.js"></script>
		</div>
                <br><br><input type="submit" value="Post your Complaint" />
			</form>            
         </div>
      </div>
      
      <%
            }
    }
    catch(Exception e){
        e.printStackTrace();
    }
%>
   </div><br>
      
      <!-- Footer.. -->
   <br><br>
   <div style="text-align:center;">
	Powered by <a href="http://about.me/rajendraarora16/">Programmer's Place</a>.
</div>
      
</body>
</html>