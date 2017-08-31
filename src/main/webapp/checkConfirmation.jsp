<!-- This social site is made by Rajendra Arora, Visit here at http://rajendra.apphb.com/-->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page language="java" import="java.util.*" %>
<%@ page language="java" import="java.sql.*" %>
<%@ page language="java" import="java.io.IOException" %>
<%@ page language="java" import="java.util.*" %>
<%@ page language="java" import="javax.mail.*" %>
<%@ page language="java" import="javax.mail.internet.*" %>
<%@ page language="java" import="javax.servlet.ServletException" %>
<%@ page language="java" import="javax.servlet.http.HttpServlet" %>
<%@ page language="java" import="javax.servlet.http.HttpServletRequest" %>
<%@ page language="java" import="javax.servlet.http.HttpServletResponse" %> 

<%
	int token_id= Integer.parseInt(request.getParameter("token_id"));
	String user_email=request.getParameter("user_email");
	String user_password=request.getParameter("user_password");
	String user_firstName=request.getParameter("user_firstName");
	String user_lastName=request.getParameter("user_lastName");
	String user_gender=request.getParameter("user_gender");
	String about_myself=request.getParameter("about_myself");
	String my_website=request.getParameter("my_website");
	
	
	Random random2 = new Random(System.currentTimeMillis());
	int secretKey=10000 + random2.nextInt(20000);
	
	
	try{
	    Class.forName("com.mysql.jdbc.Driver");
	    Connection con=DriverManager.getConnection("jdbc:mysql://127.6.200.2:3306/forum", "adminWaWcWr4", "wDaTQmcx9_9K");
	    PreparedStatement st=con.prepareStatement("insert into confirm_process(tokenId, secretKey) VALUES(?, ?)");
	    st.setInt(1, token_id);
	    st.setInt(2, secretKey);
	    st.executeUpdate();
	    
	    con.close();
	}
	catch(Exception e){
		e.printStackTrace();
	}
	
	
	
	String to = user_email;//change accordingly  
	
	//Get the session object  
	Properties props = new Properties();  
	props.put("mail.smtp.host", "smtp.gmail.com");  
	props.put("mail.smtp.socketFactory.port", "465");  
	props.put("mail.smtp.socketFactory.class",  
          	"javax.net.ssl.SSLSocketFactory");  
	props.put("mail.smtp.auth", "true");  
	props.put("mail.smtp.port", "465");  
	 
	Session sess = Session.getInstance(props,  
 	new javax.mail.Authenticator() {  
 	protected PasswordAuthentication getPasswordAuthentication() {  
 	return new PasswordAuthentication("programmersplace.noreply@gmail.com","Bhawanku16");//change accordingly  
 	}  
});  
 
//compose message  
	try {  
		 MimeMessage message = new MimeMessage(sess);  
		 message.setFrom(new InternetAddress("programmersplace.noreply@gmail.com"));//change accordingly  
		 message.addRecipient(Message.RecipientType.TO,new InternetAddress(to));  
		 message.setSubject("Your confirmation code");  
		 message.setText("Your confirmation code is "+secretKey);  
   
 	//send message  
	 Transport.send(message);
 
	} catch (MessagingException e) {throw new RuntimeException(e);}  
	
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,600,700|Pacifico' rel='stylesheet' type='text/css'>
  <title>Confirm your account now.</title>
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



</style>

<script>
function refreshFunction() {
    location.reload();
}
</script>

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/login_style.css"/>
<link rel='stylesheet' id='open-sans-css'  href='//fonts.googleapis.com/css?family=Open+Sans%3A300italic%2C400italic%2C600italic%2C300%2C400%2C600&#038;subset=latin%2Clatin-ext&#038;ver=4.1-alpha-20141011' type='text/css' media='all' />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/drop_down/css/main.css"/>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/drop_down/css/demo.css"/>
</head>
<body>

	<h1 style="text-align:center;font-size: 25px;padding: 60px 20px 10px;">We have sent you a confirmation code, check your inbox now.</h1>
	<h4 style="text-align:center;font-size: 15px;">It might take a several minutes to reach out the confirmation code onto your Inbox.</h4><br><br>
<form action="veryfingSecretCode.jsp?token_id=<%=token_id%>&user_email=<%=user_email%>&user_password=<%=user_password%>&user_firstName=<%=user_firstName%>&user_lastName=<%=user_lastName%>&user_gender=<%=user_gender%>&about_myself=<%=about_myself%>&my_website=<%=my_website%>" method="post">
	<div style="text-align: center;">
	<input type="text" name="secretKey" placeholder="Enter your 5 digits code here" style="width: 350px;"/><br><br>
	<input type="submit" value="Verify now"/>
	</div>
</form>
	<h3 style="text-align: center;font-size: 12px;">If you're unable to get confirmation code, <a id="resend_code" onclick="refreshFunction()">Click here</a> to send it again.</h3>
</body>
</html>