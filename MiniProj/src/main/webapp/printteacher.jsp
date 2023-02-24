
  
        <%@ page language="java" contentType="application/vnd.ms-excel"%>
   <% response.setHeader("Content-Disposition:","attachment;filename=teacherapplc.xls"); %> 
   
       <%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table border="1">
<tr>
<th>Name</th>
<th>email</th>
<th>details</th>
</tr>

<%
try{
		Class.forName("com.mysql.jdbc.Driver");
		String url="jdbc:mysql://localhost:3306/contact";
		String username = "root";
		String password = "Steyr251198";
		
		Connection con = DriverManager.getConnection(url,username,password);
		
		
		String q = "select * from teacher";
		PreparedStatement pstmt=con.prepareStatement(q);
		
		
	

	
		
		
		
		ResultSet rset=pstmt.executeQuery();
		
		while(rset.next())
		{ %>
		<tr>
		<td><%= rset.getString(1) %></td>
		<td><%= rset.getString(2) %></td>
		<td><%= rset.getString(3) %></td>
		
		</tr>	
		<%
		}
}

catch(Exception e){
	e.printStackTrace();
}
%>
</table>
</body>
</html>