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
		�b�����U
		</div>
			<div class=left>
			<br><br>
			<br><br><a href="addvip.jsp">1.�s�W�b��</a>
			<br><br><a href="../Delete/delete.jsp">2.�R���b��</a>
			<br><br><a href="../Query/query.jsp">3.�d�߱b��</a>
			<br><br><a href="../Update/updatevip.jsp">4.��s�b��</a>
			<br><br><a href="../index.jsp">�^�n�J����</a>
			</div>
			<div class=right>
			
			</div>
			<div class=inside>
				<form action="check.jsp" method="post">
				<table>
					<tr>
						<td>�b��:
						<br><input type="text" name="user">�п�Ja-z,0-9�^��Ʀr
						<br>�K�X:
						<br><input type="password" name="password">�п�J�K�X4~12��ƱK�X
						<br>�T�{�K�X:
						<br><input type="password" name="passwordc">
						<br><select name="level">
							<option  value="l1" selected>�򥻷|��</option>
							</select> 
						<br><input type="submit" value="���U">
				</table>
				</form>
			</div>
			
	</div>
</body>
</html>