<%@ page language="java" contentType="text/html; charset=EUC-KR"    
	pageEncoding="EUC-KR"%>
<body>
<h4>�α��� ���� ���� ����</h4>
<%
String name="HongGilDong";
String id =request.getParameter("userid");
if(id == "") /*  id �� ������ �α��� â���� ����  */
{
	response.sendRedirect("loginForm.jsp");
}
else
{
   String pw = request.getParameter("passwd");
   session.setAttribute("username", name); // ���ǰ� ����
   session.setAttribute("userid", id);           // ���ǰ� ����
   session.setAttribute("passwd", pw);        // ���ǰ� ����
   out.print( "�ȳ��ϼ���" + "&nbsp;" + id + "&nbsp;"+ "��");
   out.print("<br><br>");
   out.print("<a href='loginInfo.jsp'>��������</a>");
}
%>
</body>
