<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page language="java" import="java.sql.*" %>

<%
try{
	String question_title=request.getParameter("question_title");
	String question=request.getParameter("content");
	String question_id=request.getParameter("id");
	
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://127.6.200.2:3306/forum", "adminWaWcWr4", "wDaTQmcx9_9K");
    
    String sql="UPDATE thread_question SET question_title=?, question=? WHERE question_id=?";
    
    PreparedStatement pstmt=con.prepareStatement(sql);
    pstmt.setString(1, question_title);
    pstmt.setString(2, question);
    pstmt.setString(3, question_id);
    pstmt.executeUpdate();    
    pstmt.close();
    
    response.sendRedirect("./showThread.jsp?id="+question_id);
}
catch(Exception e){
    e.printStackTrace();
}
%>
