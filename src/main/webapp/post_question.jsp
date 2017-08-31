<!-- This social site is made by Rajendra Arora, Visit here at http://rajendra.apphb.com/-->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page language="java" import="java.sql.*" %>
<%@ page language="java" import="java.util.Date" %>
<%@ page language="java" import="java.text.SimpleDateFormat" %>
<%@ page import="org.openqa.selenium.By" %>
<%@ page import="org.openqa.selenium.WebDriver" %>
<%@ page import="org.openqa.selenium.WebElement" %>
<%@ page import="org.openqa.selenium.htmlunit.HtmlUnitDriver" %>

<%	

	int user_id=(Integer)session.getAttribute("user_id");
	String first_name=(String)session.getAttribute("first_name");
	String last_name=(String)session.getAttribute("last_name");
	String title=request.getParameter("question_title");
	String content=request.getParameter("content");
		

	Date dNow = new Date();
    SimpleDateFormat ft = new SimpleDateFormat ("hh:mm a 'at' dd/MM/yyyy");
    String question_dateTime=ft.format(dNow);
	
	try{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://127.6.200.2:3306/forum", "adminWaWcWr4", "wDaTQmcx9_9K");
		
		String sql="insert into thread_question(user_id, first_name, last_name, question_title, question, question_dateTime) values(?, ?, ?, ?, ?, ?)";
		PreparedStatement prestmt=con.prepareStatement(sql);
		
		prestmt.setInt(1, user_id);
		prestmt.setString(2, first_name);
		prestmt.setString(3, last_name);
		prestmt.setString(4, title);
		prestmt.setString(5, content);
		prestmt.setString(6, question_dateTime);
		prestmt.execute();
		
		Statement st=con.createStatement();
	    ResultSet rs=st.executeQuery("select * from thread_question where question_dateTime='"+question_dateTime+"' and question_title='"+title+"'");
	        while(rs.next()){
	        	String question_id=rs.getString("question_id");	        	
	        	
	        	WebDriver driver=new HtmlUnitDriver();
	        	driver.get("https://wordpress.com/wp-login.php");
	        	
	        	driver.findElement(By.name("log")).sendKeys("programmersplace16");
	        	driver.findElement(By.name("pwd")).sendKeys("Bhawanku16");
	        	driver.findElement(By.name("wp-submit")).click();
	        	
	        	Thread.sleep(5000);
	        	
	        	driver.get("https://rajendraaroraforum.wordpress.com/wp-admin/post-new.php");
	        	
	        	driver.findElement(By.name("post_title")).sendKeys(title);
	        	driver.findElement(By.name("content")).sendKeys(content+"\n\n<strong>Please visit here to see the discussion: <a href='http://code-programmersplace.rhcloud.com/showThreadWithoutLogin.jsp?id="+question_id+"'>Click here</a>.</strong>");
	        	driver.findElement(By.name("publish")).click();
	        	
	        	driver.close();
	        	
	        	
	        	response.sendRedirect("showThread.jsp?id="+question_id);
	    }
		
		con.close();
%>
		
<%
		}
		catch(Exception e){
		e.printStackTrace();
	}
	
	//response.sendRedirect("http://localhost:8008/forum_website/return_question.jsp?question="+question_dateTime);
%>

