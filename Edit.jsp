<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="org.hibernate.*"%>
<%@ page import="org.hibernate.cfg.*" %> 
<%@ page import="java.util.*" %> 
<%@ page import="dal.*" %> 
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String s1 = request.getParameter("q");
Configuration cfg = new Configuration();
cfg.configure("hibernate.cfg.xml");
SessionFactory sf = cfg.buildSessionFactory();
Session s = sf.openSession();
Query q = s.createQuery("from Student s where s.rno=?");
q.setInteger(0,Integer.parseInt(request.getParameter("q")));
List lst = q.list();
Iterator it = lst.iterator();
if(it.hasNext())
{
	Object o=it.next();
	Student sss = (Student)o;
	%>
	<form action="Editser" method="post">
	 <input type="text" value="<%= sss.getRno() %>"  name="txtrno" readonly="readonly" />
	 <br><br>
	 <input type="text" value="<%= sss.getSname() %>"  name="txtsname" />
	 <br><br>
	 <input type="text" value="<%= sss.getBranch() %>"  name="txtbranch" />
	 <br><br>
	 <input type="text" value="<%= sss.getFees() %>"  name="txtfees" />
	 <br><br>
	 <input type="submit" name="btnsubmit" value="update" />
	</form>
<% }


%>
</body>
</html>