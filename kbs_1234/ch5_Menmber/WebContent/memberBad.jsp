<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*"%>
<%@ page import="javax.naming.*" %>
<body>
<%
   String id=null;
if ((session.getAttribute("id")==null) || 
  (!((String)session.getAttribute("id")).equals("admin"))) {
	// �α��� ���� �ʾҰų�(���ǰ��� ������)  �Ǵ� �����ڰ� �ƴϸ� 
	 // memberLogin.jsp �� ����.  
	 // �ٷ� memberList.jsp�� �����ϸ� memberLogin.jsp �� ƨ�ܳ���

	 
out.println("<script>");
out.println("location.href=��memberLogin.jsp'");
out.println("</script>");
}

String delete_id=request.getParameter("id");
String driver="oracle.jdbc.driver.OracleDriver";  //����̹� �̸� ����
 String url="jdbc:oracle:thin:@localhost:1521:orcl";
Connection conn=null;
PreparedStatement pstmt=null;
ResultSet rs=null;
Class.forName(driver);  //����̹� �̸����� ����̹��� �ε�
conn=DriverManager.getConnection(url,"kmg","pass123");   
 %>
<center><br><br>
<h3>
 <!-- ���̵� �� ����ϰ� --> 
 <%= request.getParameter("id") %> ���� �ҷ�ȸ������ ����Ͻðڽ��ϱ� ? &nbsp;  <br> <br> 

<!--  �ҷ�ȸ������� �� memberBadOk.jsp����  id�� ������ ���� -->
<a href="memberBadOk.jsp?id=<%= delete_id %>">Yes</a> &nbsp; &nbsp; 
<a href="memberList.jsp">No</a>
</h3>
</center>
</body>
