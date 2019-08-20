<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
     import="com.DBdao.Member.query"
    %>
<!DOCTYPE html>
<html>
<head>
<link rel="icon" href="../pic/2.ico" type="image/x-icon" >
<link rel="stylesheet" href="../../CSS/CSS01.css" type="text/css">
<meta charset="BIG5">
<title>FoxShop24hr購物</title>
</head>
<body>
<%
try{
	String name = session.getAttribute("user").toString();
	
	new query().querycheck(name);
	String Lv=query.getLevel();
		if(Lv.equals("l1"))
		{
			
		}
		else if(Lv.equals("l2"))
		{
			
		}
		else 
		{
			response.sendRedirect("../index.jsp");	
		
		} 
}
catch(NullPointerException e)
{
response.sendRedirect("../iserror.jsp");
}


%>
<div class=bigbody>
		<div class=top>
		會員密碼設定
		</div>
			<div class=left>
			<br><br><br><br><br><br>
			<a href="update.jsp">密碼設定</a>
			<br><br><a href="../index.jsp">回登入頁面</a>
			</div>
			<div class=right>
			
			</div>
			<div class=inside>
				<form action="check.jsp" method="post">
				<table>
					<tr>
						<td>帳號:
						<br><input type="text" name="user">
						<br>密碼:
						<br><input type="password" name="password">請輸入密碼4~12位數密碼
						<br>確認密碼:
						<br><input type="password" name="passwordc">
						<br><input type="submit" value="更改密碼">
				</table>
				</form>
			</div>
			
	</div>

</body>
</html>