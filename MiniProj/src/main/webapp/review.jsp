// This is an edit in the review jsp file.

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*"%>
    
<!DOCTYPE html >

<html>
<head>    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>home</title>

    <!-- font awesome cdn link  -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">

    <!-- custom css file link  -->
    <link rel="stylesheet" href="style.css">
<meta charset="ISO-8859-1">
<title>Admin Login </title>


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
		
		
		String q = "insert into review(name ,email ,review) values(?,?,?)";
		PreparedStatement pstmt=con.prepareStatement(q);
		
		
		String pna=request.getParameter("name");
		String pna1=request.getParameter("email");
		String pna3=request.getParameter("message");
		
		pstmt.setString(1, pna);
		pstmt.setString(2, pna1);
		pstmt.setString(3, pna3);
		
		
		pstmt.executeUpdate();
		%><h2>Thank you for your feedback!! <br> </h2> <a href = "printreview.jsp"> <button class="btn" > Print review </button> </a> <%

}


catch(Exception e){
	e.printStackTrace();
}
%>
			
</body>
</html>
