//This is an comment in E-learning clone.


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>home</title>

    <!-- font awesome cdn link  -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">

    <!-- custom css file link  -->
    <link rel="stylesheet" href="style.css">
<meta charset="ISO-8859-1">
<title>Admin Rights</title>


</head>
<body>
<div class="container">

<header>

    <a href="#" class="logo">Smart<span>Study</span></a>
    
    <div id="menu" class="fas fa-bars"></div>
     

</header>
</div>

 
<%
try{
		Class.forName("com.mysql.jdbc.Driver");
		String url="jdbc:mysql://localhost:3306/contact";
		String username = "root";
		String password = "Steyr251198";
		
		Connection con = DriverManager.getConnection(url,username,password);
		
		
		String q = "select * from login where username = ? and password = ?";
		PreparedStatement pstmt=con.prepareStatement(q);
		
		
	
		String pna1=request.getParameter("username");
		String pna2=request.getParameter("password");
		
		
		pstmt.setString(1, pna1);
		pstmt.setString(2, pna2);
		
		
		
		
		ResultSet rset=pstmt.executeQuery();
		if(rset.next())
			
	
		%><div class="container"><header> <h2>Welcome Back Admin!! <br><br>You have successfully logged in!! </h2> <br><br> <a href = "printteacher.jsp" class = "btn">   Teacher applications</a> <br> <a href = "printreview.jsp" class = "btn">  Print review  </a> <br> <a href = "contactprint.jsp" class = "btn">  Contact details </a></header></div> <div class="image"><img src="wel.jpg" alt=""></div><%
		else
		{
			
			
			
		%><div class="container"><header> <h2>ACCESS DENIED!! <br><br> Invalid user name and password for Admin. <br> <br>Please Enter correct username and password! Or Kindly Signup </h2> <a href = "signup.html" >  <button class="btn" > Sign up </button> </a></header></div><%
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
