<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
    import="com.DBdao.Member.query"
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>檢查中</title>
</head>
<%
String USER=request.getParameter("user");
String PASSWORD=request.getParameter("password");



if(query.querybyuser(USER,PASSWORD)==true)
{
	String LV=query.getLevel();
	
	if(LV.equals("vip"))
	{
		
		response.sendRedirect("VIP.jsp");
	}
	else if(LV.equals("l1"))
	{
		response.sendRedirect("L1.jsp");
	}
	else if(LV.equals("l2"))
	{
		response.sendRedirect("L2.jsp");
	}
	else
	{
		response.sendRedirect("index.jsp");	
	}
}
else if (query.querybyuser(USER,PASSWORD)==false)
{
response.sendRedirect("iserror.jsp");
}

%>
<body>

正在跳轉中請稍後




</body>
</html>