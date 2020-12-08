<%@page import="org.hibernate.*"%>
<%@ page import="org.hibernate.cfg.*" %>  
<%@ page import="java.util.*" %>  
<%@ page import="dal.*" %>  
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<table border="1" cellpadding="0" cellspacing="0">
<%
Configuration cfg = new Configuration();
cfg.configure("hibernate.cfg.xml");
SessionFactory sf = cfg.buildSessionFactory();
Session s = sf.openSession();
Query q = s.createQuery("from Student s");
List lst = q.list(); // query object to list
Iterator it = lst.iterator();  // display list elements
%>
<tr><th>RNO</th><th>Sname</th><th>Branch</th><th>Fees</th><th>Operation</th></tr>
<%
while(it.hasNext())  //check condition to manage record
{
	Student stu =(Student)it.next();
	%>
	<tr><td> <%= stu.getRno() %></td><td><%= stu.getSname() %></td><td> <%= stu.getBranch() %></td><td><%= stu.getFees() %></td><td><a href="Edit.jsp?q=<%= stu.getRno() %>">EDIT</a></td><td><a href="Delete.jsp?q=<%= stu.getRno() %>">DELETE</a></td></tr>
<% } 
s.close();

%>
</table>
</body>
</html>