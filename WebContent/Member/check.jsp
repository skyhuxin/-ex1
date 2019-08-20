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

<body>
<%
String USER=request.getParameter("user");
String PASSWORD=request.getParameter("password");




if(query.querybyuser(USER,PASSWORD)==true)
{
	String LV=query.getLevel();
	
	if(LV.equals("vip"))
	{	
		session.setAttribute("user",USER);
		response.sendRedirect("VIP.jsp");
		session.setMaxInactiveInterval(300);
		
		//String url="VIP.jsp";
		//request.getRequestDispatcher(url).forward(request,response);
		
		
	}
	else if(LV.equals("l1"))
	{	
		response.sendRedirect("L1.jsp");
		//String url="L1.jsp";
		//request.getRequestDispatcher(url).forward(request,response);
		session.setAttribute("user",USER);
		session.setMaxInactiveInterval(300);
	}
	else if(LV.equals("l2"))
	{
		response.sendRedirect("L2.jsp");
		//String url="L2.jsp";
		//request.getRequestDispatcher(url).forward(request,response);
		session.setAttribute("user",USER);
		session.setMaxInactiveInterval(300);
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

<input type="hidden" name="user" value=USER >

正在跳轉中請稍後




</body>
</html>