<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*"%>
<%@ page import="javax.naming.*" %>
<%
	String id=null;	
	if ((session.getAttribute("id")==null) || 
	  (!((String)session.getAttribute("id")).equals("admin"))) {
		// �α��� ���� �ʾҰų�(���ǰ��� ������)  �Ǵ� �����ڰ� �ƴϸ� 
		 // memberLogin.jsp �� ����.  
		 // �ٷ� memberList.jsp�� �����ϸ� memberLogin.jsp �� ƨ�ܳ���

		out.println("<script>");
		out.println("location.href='loginForm.jsp'");
		out.println("</script>");
	}
	String delete_id=request.getParameter("id");	
	String driver="oracle.jdbc.driver.OracleDriver";  //����̹� �̸� ����
 	String url="jdbc:oracle:thin:@localhost:1521:orcl";
	
	Connection conn=null;
	PreparedStatement pstmt=null;
	ResultSet rs=null;
	
	try {
		Class.forName(driver);  //����̹� �̸����� ����̹��� �ε�
	    conn=DriverManager.getConnection(url,"kmg","pass123");		
			pstmt=conn.prepareStatement("DELETE FROM member WHERE id=?");
			// �Ѱ��� �� ID �� �������� delete ��

			pstmt.setString(1,delete_id);
			pstmt.executeUpdate();		
			out.println("<script>");
			out.println("location.href='memberList.jsp'");
			out.println("</script>");
	}catch(Exception e){
		e.printStackTrace();
	}
%>
