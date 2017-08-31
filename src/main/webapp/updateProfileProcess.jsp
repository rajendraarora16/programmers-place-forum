<!-- This social site is made by Rajendra Arora, Visit here at http://rajendra.apphb.com/-->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page language="java" import="java.sql.*" %>


<%
	String about_yourself=request.getParameter("about_yourself");
	String my_website=request.getParameter("my_website");
	String email_session=(String)session.getAttribute("user_email");

try{
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://127.6.200.2:3306/forum", "adminWaWcWr4", "wDaTQmcx9_9K");
    
    
    String sql="UPDATE login_system SET about_yourself=?, my_website=? WHERE email=?";
    
    PreparedStatement pstmt=con.prepareStatement(sql);
    
    pstmt.setString(1, about_yourself);
    pstmt.setString(2, my_website);
    pstmt.setString(3, email_session);
    pstmt.executeUpdate();
    
    con.close();
    response.sendRedirect("viewProfile.jsp");
    
}
catch(Exception e){
    e.printStackTrace();
}
    	
%>
    
    