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
<title>FoxShop24hr�ʪ�</title>
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
		�|���޲z����
		
		</div>
			<div class=left>
			<br><br>
			<br><br><a href="Add/addvip.jsp">1.�s�W�b��</a>
			<br><br><a href="Delete/delete.jsp">2.�R���b��</a>
			<br><br><a href="Query/query.jsp">3.�d�߱b��</a>
			<br><br><a href="Update/update.jsp">4.��s�b��</a>
			<br><br><a href="index.jsp">�^�n�J����</a>
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