<%@ page language="java" contentType="text/html; charset=EUC-KR"%>
<%@ page import="java.sql.*"%>
<%@ page import="javax.naming.*" %>
<%
 Connection conn = null; 
 String sql="INSERT INTO student (num,name) VALUES (?,?)";
 String driver="oracle.jdbc.driver.OracleDriver";  
 String url="jdbc:oracle:thin:@localhost:1521:orcl";
 try {
   Class.forName(driver);  
   conn=DriverManager.getConnection(url, "kmg", "pass123");
   PreparedStatement pstmt=conn.prepareStatement(sql);
   
   pstmt.setInt(1,227);   // �й� ó�� - ���߿� ������ ó��
   pstmt.setString(2,"yyttnn");  // �̸� ó�� - ���߿� ������ ó��
   if(pstmt.executeUpdate()!=0){
	   out.println("<h3> ���ڵ带 ����Ͽ����ϴ�.</h3>");
	   }
}catch(Exception e){
out.println("<h3> ��Ͽ� ����.</h3>");
e.printStackTrace();
 }
%>
   