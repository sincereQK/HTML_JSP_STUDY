<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% request.setCharacterEncoding("euc-kr"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
	"http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Request Test</title>
</head>
<body>
<%
String id=request.getParameter("userid");
out.print("���۵Ǿ� �� ID �� : ");
out.print(id);
%>
</body>
<%-- <%= "�Ѱ����� ���̵��" %>
<%= id %> --%>
</html>