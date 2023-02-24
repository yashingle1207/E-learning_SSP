<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*"%>
    
<!DOCTYPE html >

<html>
<head>

 

<title>JSP Page</title>
</head>
<body>


<%
try{
		Class.forName("com.mysql.jdbc.Driver");
		String url="jdbc:mysql://localhost:3306/contact";
		String username = "root";
		String password = "Steyr251198";
		
		Connection con = DriverManager.getConnection(url,username,password);
		
		
		String q = "insert into teacher  values(?,?,?)";
		PreparedStatement pstmt=con.prepareStatement(q);
		
		
		String pna=request.getParameter("name");
		String pna1=request.getParameter("email");
		String pna2=request.getParameter("message");
		
		
		pstmt.setString(1, pna);
		pstmt.setString(2, pna1);
		pstmt.setString(3, pna2);

		
		pstmt.executeUpdate();
		%><h2>You have successfully logged in!! <br> </h2> <a href = "printreview.jsp"> <button> Print review </button> </a> <%
	}
catch(Exception e){
	e.printStackTrace();
}
%>
			
</body>
</html>