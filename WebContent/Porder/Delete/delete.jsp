<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
    import="com.DBdao.Member.query"
    import="java.sql.ResultSet"
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
<div class=bigbody>
		<div class=top>
		刪除帳號
		</div>
			<div class=left>
			<br><br>
			<br><br><a href="../Add/addvip.jsp">1.新增帳號</a>
			<br><br><a href="delete.jsp">2.刪除帳號</a>
			<br><br><a href="../Query/query.jsp">3.查詢帳號</a>
			<br><br><a href="../Update/updatevip.jsp">4.更新帳號</a>
			<br><br><a href="../index.jsp">回登入頁面</a>
			</div>
			<div class=right>

			</div>
			<div class=inside>
			<form action="check.jsp" >
			<table>
				<tr>
					<td><input type="text" name="id" value="">
					<br><input type="submit" name="delete" value="delete">
					<br><%
					ResultSet rs;
					rs = new query().queryAll();
					out.println("<table>");
							while(rs.next())
							{
								out.println("<tr><td>"+rs.getInt("id")  
								+ "<td>" +rs.getString("user")
								+ "<td>" +rs.getString("password")
								+ "<td>" +rs.getString("level"));
							}		
							
							out.println("</table>");%>
			</table>
			</form>	
			</div>
			
	</div>

</body>
</html>