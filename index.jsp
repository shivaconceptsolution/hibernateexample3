<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="Studentser" method="post">
<input type="text" name="txtrno" placeholder="Enter rno" />
<br><br>
<input type="text" name="txtsname" placeholder="Enter name" />
<br><br>
<input type="text" name="txtbranch" placeholder="Enter branch" />
<br><br>
<input type="text" name="txtfees" placeholder="Enter fees" />
<br><br>
<input type="submit" name="btnsubmit" value="Insert" />


</form>

<a href="viewstudentrecord.jsp">View Students Record</a>
</body>
</html>