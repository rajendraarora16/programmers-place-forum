
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page language="java" import="java.sql.*" %>

<% String search_name=request.getParameter("search_name"); %>

<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,600,700|Pacifico' rel='stylesheet' type='text/css'>
  <title>Search - <%=search_name%></title>
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

#bigsearch, .bigsearch {
    padding: 0px 6px;
    clear: both;
}
form, tbody, tr, td{
margin: 0px;
padding: 3px;
border: 0px none;
font-size: 100%;
vertical-align: baseline;
background: none repeat scroll 0% 0% transparent;
}
table {
    width: 100%;
    margin-bottom: 10px;
}
table {
    border-collapse: collapse;
    border-spacing: 0px;
}
table{
margin: 0px;
padding: 0px;
border: 0px none;
font-size: 100%;
vertical-align: baseline;
background: none repeat scroll 0% 0% transparent;
}
#bigsearch .col1 input, .bigsearch .col1 input, #bigsearch .col1 textarea, .bigsearch .col1 textarea {
    width: 100%;
    max-width: 100%;
    height: 35px;
    font-size: 15px;
    border: 2px solid grey;
}
input {
    margin: 5px 0px;
    padding: 3px;
    border: 1px solid rgb(153, 153, 153);
	font-size: 100%;
	font-family: 'Helvetica Neue',Helvetica,Arial,sans-serif;
}
input[type=submit]{
	transition: all 0.5s ease 0s;
	text-shadow: 0px 1px 0px rgba(255, 255, 255, 0.25);
	padding-right: 20px;
	padding-left: 20px;
	color: white;
	padding-top: 5px !important;
	padding-bottom: 5px !important;
	font-size:16px;
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
            <div style="text-align: center;">
            	<h3 style="float:left;">Search</h3>
            		<form id="bigsearch" method="post" action="search.jsp" style="width: 60%;">
            			<table>
            				<tbody>
            					<tr>
            						<td class="col1">
            							<input class="textbox" type="text" size="80" maxlength="140" name="search_name" required="required"></input>
            						</td>
            						<td class="col2">
            							<input type="submit" value="search"></input>
            						</td>
            					</tr>
            				</tbody>
            			</table>
            		</form>
            	</div><br>
            	<h4>Result:</h4>
            <div class="Column ContentColumn" id="Content" style="width: 100%;">
            	<ul class="DataList Discussions">

<%
try{
      Class.forName("com.mysql.jdbc.Driver");
      Connection con=DriverManager.getConnection("jdbc:mysql://127.6.200.2:3306/forum", "adminWaWcWr4", "wDaTQmcx9_9K");
      String sql="SELECT * FROM thread_question WHERE question_title REGEXP ?";
      PreparedStatement pstmt=con.prepareStatement(sql);
      
      pstmt.setString(1, search_name);
      ResultSet rs=pstmt.executeQuery();
    	  while(rs.next()){
    		  String question_title=rs.getString("question_title");
    		  String thread_id=rs.getString("question_id");
    		  String first_name=rs.getString("first_name");
    		  String last_name=rs.getString("last_name");
    		  String question_dateTime=rs.getString("question_dateTime");
      
%>
   
   <li id="Discussion_6" class="Item Alt Unread ItemDiscussion">
   		<a title="sebasoffia" href="#" class="PhotoWrap"><img src="./logo/discussion_logo.png" alt="sebasoffia" class="ProfilePhoto ProfilePhotoMedium" /></a>   
   			<span class="Options"></span>
   
   <div class="ItemContent Discussion">
      <div class="Title">
      	<a style="font-size:20px;" href="showThreadWithoutLogin.jsp?id=<%=thread_id%>"><%=question_title%></a>      
      </div>
      <div class="Meta Meta-Discussion">
        <span class="MItem LastCommentBy">Asked by <%=first_name%> <%=last_name%></span>
        <span class="MItem LastCommentDate">
        	<time><%=question_dateTime %></time>
        </span>
      </div>
   </div>
   </li><br>
<%
      }
  	
    }
    catch(Exception e){
        e.printStackTrace();
    }

%>
<h4 style="text-align: center;">No more result found!</h4>
</ul>
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