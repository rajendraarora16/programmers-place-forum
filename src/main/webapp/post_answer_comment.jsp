<!-- This social site is made by Rajendra Arora, Visit here at http://rajendra.apphb.com/-->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%
    if ((session.getAttribute("user_email") == null) || (session.getAttribute("user_email") == "")) {
    	response.sendRedirect("login.jsp");
%>
<%
	} else
%>
    
<%@ page language="java" import="java.sql.*" %>
<%@ page language="java" import="java.util.Date" %>
<%@ page language="java" import="java.text.SimpleDateFormat" %>

<%
	
	int user_id=(Integer)session.getAttribute("user_id");
	String question_id=request.getParameter("question_id");
	String content=request.getParameter("content");
	String first_name=(String)session.getAttribute("first_name");
	String last_name=(String)session.getAttribute("last_name");
	
	Date dNow = new Date();
    SimpleDateFormat ft = new SimpleDateFormat ("hh:mm a 'at' dd/MM/yyyy");
    String answer_comment_dateTime=ft.format(dNow);
	
	try{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://127.6.200.2:3306/forum", "adminWaWcWr4", "wDaTQmcx9_9K");
		
		String sql="insert into thread_answer(user_id, question_id, first_name, last_name, answer, answer_dateTime) values(?, ?, ?, ?, ?, ?)";
		PreparedStatement prestmt=con.prepareStatement(sql);
		
		prestmt.setInt(1, user_id);
		prestmt.setString(2, question_id);
		prestmt.setString(3, first_name);
		prestmt.setString(4, last_name);
		prestmt.setString(5, content);
		prestmt.setString(6, answer_comment_dateTime);
		prestmt.executeUpdate();
		
		con.close();
		
		response.sendRedirect("showThread.jsp?id="+question_id);
		
		}
		catch(Exception e){
		e.printStackTrace();
	}
%>