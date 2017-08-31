<!-- This social site is made by Rajendra Arora, Visit here at http://rajendra.apphb.com/-->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>There are some rules for this Social site which you need to must follow first.</title>
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
</style>

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
            <!-- Follow rules to be here -->
            <h1 style="font-size: 30px;">Follow official rules to be the members of Programmer's place:</h1>
            <br><br>
            <h5><strong>If you have any problems regarding any issues, Send a mail to our moderators "rajendraarora161992@gmail.com". Hopefully you'll get response at very short time.</strong></h5><br>
            <div>
            	<p style="font-size: 17px;">1. Posts must be about Java, C, C++, C#, Android, PHP, Computer Science and so on.<br>

2. Do not send Admins or any other members a unusual emails, you'll be banned from this site.<br>

3. No contest questions, no adverts, no spam, no religious, political, nationalistic, sexist, homophobic, and soon.<br>

4. Posts in standard English only. No slang, txtspk or l33tsp33k.<br>

5. No contest questions, no job adverts. Use a FB IT Jobs group or similar.<br>

6. If you are a raw novice, don't be afraid to ask - there are no stupid questions.<br>

7. Before you ask, use Google and read your Java textbook, and the Java API.<br>

8. Do not ask people to do your assignment - we won't. We will help you to do it.<br>

9. If your project is due in two days, and you haven't started yet - Forget it.<br>

10. Be friendly and diplomatic.<br>

11. Make your question clear and precise. Post your code through editor(given "syntaxhighlighter" in editor) and give the error message.<br>

12. If you answer a question, make certain your answer is correct.<br>

13. Do not ask, nor provide, information to achieve illegal goals, including sharing copyrighted stuff.<br>

14. Do not supply code unless the OP has shown theirs. Do not supply student projects.<br>

15. Do not tag a people by name in questions (for e.g: Please "blah" solve my question).<br>

16. Closed threads are closed, and further posts will be deleted.<br>

17. The goal of this Programmer's place is not to promote your own blog or software.<br>

18. Do not reply to old threads ('necro-bumping').<br>

19. Do not ask a new question in a thread - start a new thread for it.<br>

20. Check our docs for suggested books and useful links.<br>

21. Avoid trolling.<br>

22. Do not duplicate threads please.<br>

23. Please avoid posts denigrating other languages, IDEs or OS.<br>

24. Do not swallow exceptions.<br></p>
            </div>
         </div>
      </div>
   </div><br>
      
      <!-- Footer.. -->
   <div style="text-align:center;">
	Powered by <a href="http://about.me/rajendraarora16/">Programmer's Place</a>.
</div>
      
</body>
</html>