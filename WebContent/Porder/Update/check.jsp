<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
    import="com.DBdao.Member.update"
    import="com.DBdao.Member.query"
    import="java.sql.ResultSet"
    import="com.Model.member"
    
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>處理中請稍後</title>
</head>
<body>
<%
String USER=request.getParameter("user");
String PASSWORD=request.getParameter("password");
String PASSWORDc=request.getParameter("passwordc");
boolean x=query.querycheck(USER);
String Level=query.getLevel();
int		id=query.getId();

if(PASSWORD.equals(PASSWORDc))  
{
	if(x==true)
	{
		
	
	member m=new member(USER,PASSWORD,Level);
	
	
	new update().update(id,m);
	response.sendRedirect("../index.jsp");
	}
	else
	{
	response.sendRedirect("update.jsp");
	}
}	
else 
{
		response.sendRedirect("update.jsp");	
}


Thread.currentThread().sleep(1000);
%>

</body>
</html>