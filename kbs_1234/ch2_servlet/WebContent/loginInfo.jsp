<%@ page language="java" contentType="text/html; charset=EUC-KR"    
	pageEncoding="EUC-KR"%>
	
<body>
<h4>�α��� ���� ����</h4>
<%
    String id = (String)session.getAttribute("userid");
      //  ���� �� �о� ��
if( id == null )
{
     response.sendRedirect("loginForm.jsp");
     //  �α��� ���� �ʰ� �ٷ� �� ���� �����ϸ� 
     //  loginForm.jsp ���ϸ� ��� ȣ�� ��
}
else
{
                 // ���� �� �о� ��
  String pw = (String)session.getAttribute("passwd");
  String name = (String)session.getAttribute("username");
  out.print("����� �̸� ��: " + name + "<br>");
  out.print("����� ���̵�: " + id + "<br>");
  out.print("����� ��й�ȣ��: " + pw + "<br>");
  out.print("<a href='logout.jsp'>�α� �ƿ�</a>");
}
%>
</body>
