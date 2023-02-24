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
<h1> <center> Thank you for your valuable reviews <br> We are continuously working on improving our services based on your feedback <br> Feel free to share more.....!! </h1>
<%
try{
		Class.forName("com.mysql.jdbc.Driver");
		String url="jdbc:mysql://localhost:3306/contact";
		String username = "root";
		String password = "Steyr251198";
		
		Connection con = DriverManager.getConnection(url,username,password);
		
		
		String q = "insert into con(name ,email ,subject,message) values(?,?,?,?)";
		PreparedStatement pstmt=con.prepareStatement(q);
		
		
		String pna=request.getParameter("name");
		String pna1=request.getParameter("email");
		String pna2=request.getParameter("subject");
		String pna3=request.getParameter("message");
		
		pstmt.setString(1, pna);
		pstmt.setString(2, pna1);
		pstmt.setString(3, pna2);
		pstmt.setString(4, pna3);
		
		pstmt.executeUpdate();
	}
catch(Exception e){
	e.printStackTrace();
}
%>
			
</body>
</html>