<!-- This social site is made by Rajendra Arora, Visit here at http://rajendra.apphb.com/-->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page language="java" import="java.sql.*" %>    

<%
	int token_id= Integer.parseInt(request.getParameter("token_id"));
	int secretKey= Integer.parseInt(request.getParameter("secretKey"));
	String user_email=request.getParameter("user_email");
	String user_password=request.getParameter("user_password");
	String user_firstName=request.getParameter("user_firstName");
	String user_lastName=request.getParameter("user_lastName");
	String user_gender=request.getParameter("user_gender");
	String about_myself=request.getParameter("about_myself");
	String my_website=request.getParameter("my_website");

	try{
	    Class.forName("com.mysql.jdbc.Driver");
	    Connection con=DriverManager.getConnection("jdbc:mysql://127.6.200.2:3306/forum", "adminWaWcWr4", "wDaTQmcx9_9K");
	    PreparedStatement st=con.prepareStatement("select * from confirm_process where tokenId=?");
	    st.setInt(1, token_id);
	    ResultSet rs=st.executeQuery();       	
	        	while(rs.next()){
	        		int getSecretKey=rs.getInt("secretKey");
	        		
	        	if(getSecretKey==secretKey){
	        		response.sendRedirect("registration.jsp?user_email="+user_email+"&user_password="+user_password+"&user_firstName="+user_firstName+"&user_lastName="+user_lastName+"&user_gender="+user_gender+"&about_myself="+about_myself+"&my_website="+my_website);
	        		}
	        		else{
	        			
	        			out.print("Invalid key!!..");
	        		}
	        	}
	    con.close();
	}
	catch(Exception e){
		e.printStackTrace();
	}
%>