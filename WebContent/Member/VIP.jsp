<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
    import="com.DBdao.Member.query"
    
    %>
<!DOCTYPE html>
<html>
<head>
<link rel="icon" href="pic/2.ico" type="image/x-icon" >
<link rel="stylesheet" href="../CSS/CSS01.css" type="text/css">
<meta charset="BIG5">
<title>FoxShop24hr購物</title>
</head>
<body>

<%

try{
	
	String name = session.getAttribute("user").toString();
	
	new query().querycheck(name);
	String Lv=query.getLevel();
		if(Lv.equals("vip"))
		{
			
		}
		else 
		{
			response.sendRedirect("index.jsp");	
		
		} 
}
catch(NullPointerException e)
{
response.sendRedirect("iserror.jsp");
}
%>
<div class=bigbody>
		<div id="top">
		會員管理介面
		
		</div>
			<div class=left>
			<br><br>
			<br><br><a href="Add/addvip.jsp">1.新增帳號</a>
			<br><br><a href="Delete/delete.jsp">2.刪除帳號</a>
			<br><br><a href="Query/query.jsp">3.查詢帳號</a>
			<br><br><a href="Update/update.jsp">4.更新帳號</a>
			<br><br><a href="index.jsp">回登入頁面</a>
			</table>
			</div>
			<div class=right>
			
				
				
			</div>
			<div class=inside>
				<div class=l>
					
				</div>
			</div>
			
	</div>
</body>
</html>