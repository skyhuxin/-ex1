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
			response.sendRedirect("../index.jsp");	
		
		} 
}
catch(NullPointerException e)
{
response.sendRedirect("../iserror.jsp");
}

%>
<body>


	<div class=bigbody>
		<div class=top>
		帳號註冊
		</div>
			<div class=left>
			<br><br>
			<br><br><a href="addvip.jsp">1.新增帳號</a>
			<br><br><a href="../Delete/delete.jsp">2.刪除帳號</a>
			<br><br><a href="../Query/query.jsp">3.查詢帳號</a>
			<br><br><a href="../Update/updatevip.jsp">4.更新帳號</a>
			<br><br><a href="../index.jsp">回登入頁面</a>
			</div>
			<div class=right>
			
			</div>
			<div class=inside>
				<form action="check.jsp" method="post">
				<table>
					<tr>
						<td>帳號:
						<br><input type="text" name="user">請輸入a-z,0-9英文數字
						<br>密碼:
						<br><input type="password" name="password">請輸入密碼4~12位數密碼
						<br>確認密碼:
						<br><input type="password" name="passwordc">
						<br><select name="level">
							<option  value="l1" selected>基本會員</option>
							</select> 
						<br><input type="submit" value="註冊">
				</table>
				</form>
			</div>
			
	</div>
</body>
</html>