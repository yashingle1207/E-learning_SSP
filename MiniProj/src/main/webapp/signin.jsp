<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*"%>
    
<!DOCTYPE html >

<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>contact</title>

    <!-- font awesome cdn link  -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">

    <!-- custom css file link  -->
    <link rel="stylesheet" href="style.css">

<title>JSP Page</title>
</head>
<body>

<%
try{
		Class.forName("com.mysql.jdbc.Driver");
		String url="jdbc:mysql://localhost:3306/customer";
		String username = "root";
		String password = "Steyr251198";
		
		Connection con = DriverManager.getConnection(url,username,password);
		
		
		String q = "select * from signup where email = ? and password = ?";
		PreparedStatement pstmt=con.prepareStatement(q);
		
		
	
		String pna1=request.getParameter("email");
		String pna2=request.getParameter("password");
		
		
		pstmt.setString(1, pna1);
		pstmt.setString(2, pna2);
		
		
		
		
		ResultSet rset=pstmt.executeQuery();
		if(rset.next())
		
		%><h2>You have successfully logged in!! </h2><%
		else
		{
			
			
		%><h2>Invalid user name and password !<h2> <br> <h2>Please Enter correct username and password! Or Kindly Signup <h2> <a href = "signup.html"> <button class="btn"> Sign up </button> </a><%
		//RequestDispatcher rd=request.getRequestDispatcher("signup.html");
		//rd.include(request,response);
	}
		
}

catch(Exception e){
	e.printStackTrace();
}
%>
			
</body>
</html>