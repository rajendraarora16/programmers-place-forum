<!-- This social site is made by Rajendra Arora, Visit here at http://rajendra.apphb.com/-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<%

	String email=request.getParameter("user_email");
	String password=request.getParameter("user_password");
	String FirstName=request.getParameter("user_firstName");
	String LastName=request.getParameter("user_lastName");
	String Gender=request.getParameter("user_gender");
	String about_myself=request.getParameter("about_myself");
	String my_website=request.getParameter("my_website");
		
try{
		
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://127.6.200.2:3306/forum", "adminWaWcWr4", "wDaTQmcx9_9K");
    
    String sql="insert into login_system(email, password, first_name, last_name, gender, about_yourself, my_website) values(?, ?, ?, ?, ?, ?, ?)";
    
    PreparedStatement pstmt=con.prepareStatement(sql);
    
    pstmt.setString(1, email);
    pstmt.setString(2, password);
    pstmt.setString(3, FirstName);
    pstmt.setString(4, LastName);
    pstmt.setString(5, Gender);
    pstmt.setString(6, about_myself);
    pstmt.setString(7, my_website);
    
    pstmt.executeUpdate();    
    
    con.close();
    
    response.sendRedirect("accountSuccessfullyCreated.jsp");
	}
	catch(Exception e){
	e.printStackTrace();
}
    
%>
