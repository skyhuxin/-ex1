<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
    import="com.DBdao.Member.delete"
    
    %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="../../CSS/CSS01.css" type="text/css">
<meta charset="BIG5">
<title>�B�z���еy��</title>
</head>
<body>
<div class=bigbody>
		<div class=top>
		��ƳB�z��
		</div>
			<div class=left>
			
			</div>
			<div class=right>
			
			</div>
			<div class=inside>
				��ƳB�z���C�C�C�Фū��W�@��
				�H�K�B�z����
				<%
				String id=request.getParameter("id");
				
				if(id==null)
				{
					
					
				}
				else if (id!="")
				{
				int ID=	Integer.parseInt(id);
					new delete().delete(ID);
				}
				
				Thread.currentThread().sleep(1000);
				
				response.sendRedirect("delete.jsp");
				
				
				%>
			</div>
			
	</div>



</body>
</html>