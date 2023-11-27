<%@ page contentType="text/html" language="java" import="java.sql.*"%>
<html>
<head>
<title>Three Tier Application</title>
<style type="text/css">
body{color:blue;font-family:courier;text-align:center}
</style>
</head>
<body>
<h2>EXAMINATION RESULT</h2><hr/>
<%
String str=request.getParameter("regno");
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/examDB","root","your-mysql-password");
Statement stmt=con.createStatement();
ResultSet rs=stmt.executeQuery("SELECT*FROM markTab WHERE rno="+str);
while(rs.next())
{
%>
Register No:<%=rs.getObject(1)%><br/>
Name:<%=rs.getObject(2)%><br/>
<table-border="1">
<th>SUBJECT</th><th>Mark</th>
<tr><td>Network Programming and Management</td><td><%=rs.getObject(3)%></td></tr>
<tr><td>Object Oriented Analysis and Design</td><td><%=rs.getObject(4)%></td></tr>
<tr><td>Cryptography and Network Security</td><td><%=rs.getObject(5)%></td></tr>
<tr><td>Embedded Systems</td><td><%=rs.getObject(6)%></td></tr>
<tr><td>Web Technology</td><td><%=rs.getObject(7)%></td></tr>
<tr><td>Software Requirement and Engineering</td><td><%=rs.getObject(8)%></td></tr>
</table>
<%
}
%>
<br/>
<a href="stud.html">Back</a>
</body>
</html>