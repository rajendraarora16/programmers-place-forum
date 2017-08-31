<!-- This social site is made by Rajendra Arora, Visit here at http://rajendra.apphb.com/-->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page language="java" import="java.sql.*" %>

<%
	String question_id=request.getParameter("id");

    if (!(session.getAttribute("user_email") == null) || (session.getAttribute("user_email") == "")) {
    	response.sendRedirect("showThread.jsp?id="+question_id);
%>
<%
	} else
%>

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
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,600,700|Pacifico' rel='stylesheet' type='text/css'>
  <title><%=thread_title %></title>
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

<script src="https://google-code-prettify.googlecode.com/svn/loader/run_prettify.js"></script>
<link href="${pageContext.request.contextPath}/code/prettify.css" type="text/css" rel="stylesheet" />
<script type="text/javascript" src="${pageContext.request.contextPath}/code/prettify.js"></script>

<link rel="stylesheet" type="text/css" href="wmd.css" />
<link rel="stylesheet" type="text/css" href="style_editor.css" />
<script type="text/javascript" src="showdown.js"></script>


<!-- Place this tag in your head or just before your close body tag. -->
<script src="https://apis.google.com/js/platform.js" async defer></script>

</head>
<body onload="prettyPrint()" id="vanilla_discussion_index" class="Vanilla Discussion Index  Section-Discussion Section-Category-general" style="background-color: rgb(233, 234, 237);">

<!-- Facebook share -->
<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.0";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>
<!-- Facebook END -->

<!-- Twitter share -->
<script type="text/javascript">
window.twttr=(function(d,s,id){var t,js,fjs=d.getElementsByTagName(s)[0];if(d.getElementById(id)){return}js=d.createElement(s);js.id=id;js.src="https://platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);return window.twttr||(t={_e:[],ready:function(f){t._e.push(f)}})}(document,"script","twitter-wjs"));
</script>
<!-- Twitter End -->

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
            
            <div class="Column ContentColumn" id="Content" style="width: 100%;">

            	<div class="MessageList Discussion">
            	
            		<!-- Page Title -->
					<div id="Item_0" class="PageTitle">
						<div class="Options"></div>
						
						<!-- This is Title.. -->
						<a href="showThread.jsp?id=<%=question_id %>" style="text-decoration: none;"><h1 style="padding: 10px 20px; font-weight: bold; background-color: rgb(250, 250, 250);"><%=thread_title %></h1></a>
						
					</div>


<div class="discusx">
	<div id="Discussion_4" class="Item ItemDiscussion">
   		<div class="Discussion">
      		<div class="Item-Header DiscussionHeader heighter">
        		<!-- Wrap user-->
				<div class="iipo">
				<div class="AuthorWrap">
            		<span class="Author">
               			<a href="#" class="PhotoWrap"><img src="./logo/discussion_logo.png" alt="Julie" class="ProfilePhoto ProfilePhotoMedium" /></a>
               			<a href="showProfile.jsp?user_id=<%=user_id%>"><%=first_name%> <%=last_name%></a>            
               		</span>
            		<span class="AuthorInfo"></span>
         		</div>
		 		<!-- End -->
        
           <div class="colrme">
               <i class="fa fa-clock-o"></i> 
               	 <time><%=thread_dateTime %></time>
		   </div>
		   </div>
		 
		  <div class="ssclear"></div>
      	  </div>
          
          <div class="Item-BodyWrap">
          	 <div class="Item-Body">
            	<div class="Message ffg">   
               		<%=thread_question %><br />            
               	</div>
            	<div class="Reactions"></div>         
            </div>
      	  </div>
   		</div>
	</div>
</div>
<%
int sessionUserId=(Integer)session.getAttribute("user_id");

	if(user_id==sessionUserId){
		out.println("<a href='./editQuestionMaker.jsp?id="+question_id+"'>Edit question</a>");
	}else{
		//do nothing here
	}
%>
</div>
<%
            }
    }
    catch(Exception e){
        e.printStackTrace();
    }
%>

<br><br>

<!-- Share on Social networking sites. -->
<h1 style="font-size: 15px;">Does your friends know the answeres? Share this question via:</h1>

<div>
<!-- Facebook share.. -->
<div class="fb-share-button" data-href="http://code-programmersplace.rhcloud.com/showThreadWithoutLogin.jsp?id=<%=question_id%>" data-layout="button"></div>
<!-- End!! -->
<br><br>
<!-- Twitter share -->
<a href="http://code-programmersplace.rhcloud.com/showThreadWithoutLogin.jsp?id=<%=question_id%>" class="twitter-share-button"
  data-dnt="true"
  data-count="none"
  data-via="twitterdev">
Tweet
</a>
<!-- End!! -->
<br><br>
<!-- Google plus -->
<!-- Place this tag where you want the share button to render. -->
<div class="g-plus" data-action="share" data-annotation="none"></div>
</div>
<br><br>
<div class="CommentsWrap" style="border-top: 1px solid #d5d5d5;">
	<span class="BeforeCommentHeading"></span>
		<div class="DataBox DataBox-Comments">
			<i class="fa fa-comments oil"></i>
			
			<div class="oili">Discussions</div>
			
			<div class="clearleft"></div>
			
<%

	
	
    try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://127.6.200.2:3306/forum", "adminWaWcWr4", "wDaTQmcx9_9K");
        Statement st=con.createStatement();
        ResultSet rs=st.executeQuery("select * from thread_answer where question_id="+question_id);
            while(rs.next()){
            	
            	int user_id=rs.getInt("user_id");
            	String first_name=rs.getString("first_name");
            	String last_name=rs.getString("last_name");
            	String thread_answer=rs.getString("answer");
            	String thread_dateTime_answer=rs.getString("answer_dateTime");
%>
			
			<ul class="MessageList DataList Comments">
				<li class="Item Alt ItemComment" id="Comment_6">
   					<div class="Comment">
      
            			<div class="Options"></div>
            		
            		<div class="Item-Header CommentHeader">
         
         			<div class="AuthorWrap">
            			<span class="Author">
            				<a href="#" class="PhotoWrap"><img src="./logo/discussion_logo.png" alt="Julie" class="ProfilePhoto ProfilePhotoMedium" /></a>
               				<a href="showProfile.jsp?user_id=<%=user_id%>" class="Username"><%=first_name%> <%=last_name%></a>            
               			</span>
            			<span class="AuthorInfo"></span>   
         			</div>
         
         			<div class="Meta CommentMeta CommentInfo">
            			<i class="fa fa-clock-o"></i> 
            			<span class="MItem DateCreated">
               			<a href="#" class="Permalink" name="Item_1" rel="nofollow">
               				<time><%=thread_dateTime_answer %></time>
               			</a>            
               			</span>
                    </div>
      				</div>
      
      
      <div class="Item-BodyWrap">
         <div class="Item-Body">
            <div class="Message">
               <%=thread_answer %>           
            </div>
            <div class="Reactions"></div>         
         </div>
      </div>
   </div>
</li>
</ul>

<%
            }
    }
    catch(Exception e){
        e.printStackTrace();
    }
%>
</div>

<div class="P PagerWrap"></div></div><br><br>
<div class="P PagerWrap">
	<span>Want to Answer this Question? <a href="login.jsp" style="text-decoration: none;color:black;"><strong>Sign In</strong></a> or <a href="signup.jsp" style="text-decoration: none;color:black;"><strong>Sign Up</strong></a> Today!</span>
</div>

		</div>
         </div>
      </div>
   </div><br><br>
   
<div style="text-align:center;">
	Powered by <a href="http://about.me/rajendraarora16/">Programmer's Place</a>.
</div>
<script type="text/javascript">
$(document).ready(function(){
    $("pre").addClass("prettyprint");
});
</script>
</body>
</html>