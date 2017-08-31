<!-- This social site is made by Rajendra Arora, Visit here at http://rajendra.apphb.com/-->

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page language="java" import="java.sql.*" %>
<%
    if ((session.getAttribute("user_email") == null) || (session.getAttribute("user_email") == "")) {
    	response.sendRedirect("login.jsp");
%>
<%
	} else	
%>

<% String first_name=(String)session.getAttribute("first_name"); %>

<%
try{
	int sessionUserId=(Integer)session.getAttribute("user_id");
	String question_id=request.getParameter("id");
	
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://127.6.200.2:3306/forum", "adminWaWcWr4", "wDaTQmcx9_9K");
    
    String sql="select * from thread_question where question_id=?";
    
    PreparedStatement pstmt=con.prepareStatement(sql);
    pstmt.setString(1, question_id);
    
    ResultSet rs=pstmt.executeQuery();
    
    while(rs.next()){
    	int user_id=rs.getInt("user_id");
    	String thread_title=rs.getString("question_title");
    	String thread_question=rs.getString("question");
    	
    	if(sessionUserId==user_id){
    		
%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,600,700|Pacifico' rel='stylesheet' type='text/css'>
<title>Edit your Question - But open up your mind before editing first.</title>
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
					<a class="clicker" style="background-color: black;"><img src="drop_down/img/i-1.png" alt="Icon">Welcome <%=first_name%></a>
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
<br><br><br>
   <div id="Frame">
      <div id="Body">
         <div class="container">
            <div class="Column ContentColumn" id="Content" style="width: 100%;">
            	<h4><strong>Edit your question</strong> - Open up your mind before editing and follow some <a href="followRules.jsp">rules</a>.</h4><br>
            	<div class="PageControls Top"></div>
            	
<ul class="DataList Discussions">

<form method="post" action="editQuestionProcess.jsp?id=<%=question_id%>">   
   <li id="Discussion_6" class="Item Alt Unread ItemDiscussion">
   		<h4>Title of your question:</h4><br>
   		<input type="text" id="Form_Name" name="question_title" style="height: 50px; font-size: 18px;" class="InputBox" value="<%=thread_title%>" required/>
   </li><br><br>
   
   <li id="Discussion_6" class="Item Alt Unread ItemDiscussion">
   		<h4>Hello <%=first_name%>, Tell us about your question in briefly - What did you try at first? and follow "<a href="followRules.jsp">rules</a>" before asking.</h4><br>
   		
   		<!-- Tell us in briefly here.. -->

		<div>
        <div id="wmd-editor" class="wmd-panel">
			<div id="wmd-button-bar"></div>
			<textarea id="wmd-input" name="content"><%=thread_question%></textarea>
		</div>
		
		<div id="wmd-preview" class="wmd-panel"></div><br><br>

		<script type="text/javascript" src="wmd.js"></script>
		</div>
    <br><br><input type="submit" value="Update question" />
    </li>
</form>
</ul>
			</div>
         </div>
      </div>
   </div>
 <% 
}
    	else{
    		out.print("Sorry, You're not allowed to edit this Question.");
    	}
    }
    
    pstmt.close();
}
catch(Exception e){
    e.printStackTrace();
}
%>      
</body>
</html>