<%@ page import="java.sql.*" %>

<%	

	String user_email=request.getParameter("user_email");
	String user_password=request.getParameter("user_password");
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://127.6.200.2:3306/forum", "adminWaWcWr4", "wDaTQmcx9_9K");
	Statement st=con.createStatement();
	
	String sql="select * from login_system where email=? and password=?";
	
	PreparedStatement pstmt=con.prepareStatement(sql);
	
	pstmt.setString(1, user_email);
	pstmt.setString(2, user_password);
	ResultSet rs=pstmt.executeQuery();
	
	if(rs.next()){
		
		session.setAttribute("user_email", user_email);
		session.setAttribute("first_name", rs.getString("first_name"));
		session.setAttribute("last_name", rs.getString("last_name"));
		session.setAttribute("user_id", rs.getInt("user_id"));
		
		response.sendRedirect("index.jsp");
	}else{
		response.sendRedirect("login.jsp");
	}
	
	pstmt.close();
%>
