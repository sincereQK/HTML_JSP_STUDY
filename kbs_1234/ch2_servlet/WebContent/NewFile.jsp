<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
      out.print("Hello JSP");
      /* JSP ���������� out ��ü ���� ���� �ٷ� ��� ������. */

     /* ����������  out ��ü�� ����ϱ� ���� ��ü ���� �� ���
      PrintWriter out = response.getWriter(); 
      response ��ü�� getWriter() �޼ҵ带 ȣ���Ͽ� ���� �� ����Ͽ���.
      out.println("</html></body>");
    */
  %>
<%
    String name = "ȫ�浿";
%>
<%= name %>

</body>
</html>