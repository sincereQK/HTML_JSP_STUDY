<%@ page language="java" contentType="text/html; charset=EUC-KR"%>
<%@ page import="java.sql.*"%>
<%@ page import="javax.naming.*" %>
<%
String id=null;
if ((session.getAttribute("id")==null) || 
  (!((String)session.getAttribute("id")).equals("admin"))) {
	 // �α��� ���� �ʾҰų�(���ǰ��� ������) �����ڰ� �ƴϸ� 
	 // memberLogin.jsp �� ����.  
	 // �ٷ� memberList.jsp�� �����ϸ� memberLogin.jsp �� ƨ�ܳ���

out.println("<script>");
out.println("location.href='lmemberLginForm.jsp'");
out.println("</script>");
}

//���ǰ��� �ְ�, ���� �Ƶ� admin �̸� �Ʒ� ����
String delete_id=request.getParameter("id");
String driver="oracle.jdbc.driver.OracleDriver";  
 String url="jdbc:oracle:thin:@localhost:1521:orcl";
Connection conn=null;
PreparedStatement pstmt=null;
ResultSet rs=null;

Class.forName(driver);  
conn=DriverManager.getConnection(url,"kmg","pass123");
pstmt=conn.prepareStatement("Update member Set status=1 WHERE id=?");
pstmt.setString(1,delete_id);
pstmt.executeUpdate();
out.println("<script>");
out.println("location.href='memberList.jsp'");
//�ҷ�ȸ������ ����ϰ� list ������ �ٽ� ȣ���ϸ� ����ȸ���� ���

out.println("</script>");
%>
