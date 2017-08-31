<!-- This social site is made by Rajendra Arora, Visit here at http://rajendra.apphb.com/-->
<%@page import="javax.mail.SendFailedException"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page language="java" import="java.sql.*" %>

<% int user_id=(Integer)session.getAttribute("user_id"); %>
<% int question_id=Integer.parseInt(request.getParameter("id")); %>
<% String first_name=(String)session.getAttribute("first_name"); %>
<% String last_name=(String)session.getAttribute("last_name"); %>
<% String message=request.getParameter("content"); %>

<%
	
    try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://127.6.200.2:3306/forum", "adminWaWcWr4", "wDaTQmcx9_9K");

        String sql="INSERT INTO complaint_message(user_id, question_id, first_name, last_name, message) VALUES(?, ?, ?, ?, ?)";
        
        PreparedStatement pstmt=con.prepareStatement(sql);
        pstmt.setInt(1, user_id);
        pstmt.setInt(2, question_id);
        pstmt.setString(3, first_name);
        pstmt.setString(4, last_name);
        pstmt.setString(5, message);
        pstmt.executeUpdate();
        
        pstmt.close();
        
        response.sendRedirect("complaintSendSuccessfully.jsp");
        
    }
    catch(Exception e){
        e.printStackTrace();
    }
%>

    