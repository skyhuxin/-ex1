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
<title>FoxShop24hr�ʪ�</title>
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
		�|���K�X�]�w
		</div>
			<div class=left>
			<br><br><br><br><br><br>
			<a href="update.jsp">�K�X�]�w</a>
			<br><br><a href="../index.jsp">�^�n�J����</a>
			</div>
			<div class=right>
			
			</div>
			<div class=inside>
				<form action="check.jsp" method="post">
				<table>
					<tr>
						<td>�b��:
						<br><input type="text" name="user">
						<br>�K�X:
						<br><input type="password" name="password">�п�J�K�X4~12��ƱK�X
						<br>�T�{�K�X:
						<br><input type="password" name="passwordc">
						<br><input type="submit" value="���K�X">
				</table>
				</form>
			</div>
			
	</div>

</body>
</html>