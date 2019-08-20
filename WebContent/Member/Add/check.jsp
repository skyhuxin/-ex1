<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
     import="com.DBdao.Member.query"
     import="com.Model.member"
     import="com.DBdao.Member.add"
     %>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>Insert title here</title>
</head>
<%
String USER=request.getParameter("user");
String PASSWORD=request.getParameter("password");
String PASSWORDc=request.getParameter("passwordc");
String Level=request.getParameter("level");
member m=new member(USER,PASSWORD,Level);
Thread.currentThread().sleep(1000);
if(PASSWORD.equals(PASSWORDc))  
{	
	if(query.querycheck(USER)==true)
	{
	response.sendRedirect("add.jsp");
	}
	else
	{
	new add().add(m);	
	
	response.sendRedirect("../index.jsp");
	}
}
else
{
	response.sendRedirect("add.jsp");	
}


%>
<body>

</body>
</html>