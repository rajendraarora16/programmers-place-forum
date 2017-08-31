<!-- This social site is made by Rajendra Arora, Visit here at http://rajendra.apphb.com/-->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page language="java" import="java.sql.*" %>
<%@ page language="java" import="java.util.*" %>

<%
	
	Random random = new Random(System.currentTimeMillis());
	int token_id=10000 + random.nextInt(20000);
	
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
    PreparedStatement st=con.prepareStatement("select * from login_system where email=?");
    st.setString(1, user_email);
    ResultSet rs=st.executeQuery();       	
        	if(rs.next()){
        		out.print("This Email is already registered!!");
        	}
        	else{
            	response.sendRedirect("checkConfirmation.jsp?token_id="+token_id+"&user_email="+user_email+"&user_password="+user_password+"&user_firstName="+user_firstName+"&user_lastName="+user_lastName+"&user_gender="+user_gender+"&about_myself="+about_myself+"&my_website="+my_website);
            }
    con.close();
}
catch(Exception e){
	e.printStackTrace();
}
%>