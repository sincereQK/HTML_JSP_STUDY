<%@ page language="java" contentType="text/html; charset=EUC-KR"%>
<%@ page import="java.sql.*"%>  
<%@ page import="javax.naming.*" %>
<%
 Connection conn = null; 
 Statement stmt=null;
   
 String sql="INSERT INTO student (num,name) VALUES (333,'�Ӳ���')";
 
 String driver="oracle.jdbc.driver.OracleDriver";  //����̹� �̸� ����
 String url="jdbc:oracle:thin:@localhost:1521:orcl";
try { 
  Class.forName(driver);  //����̹� �̸����� ����̹��� �ε�
  conn=DriverManager.getConnection(url,"kmg","pass123");
  stmt= conn.createStatement();
  int result=stmt.executeUpdate(sql);
  //  String sql="INSERT INTO student (num,name) VALUES (333,'�Ӳ���')";
  // ����ǰ� �������� int������ ����
  if(result!=0){
  out.println("<h3>���ڵ尡 ��ϵǾ����ϴ�.</h3>");
}
}catch(Exception e){
out.println("<h3>���ڵ� ��Ͽ� �����Ͽ����ϴ�.</h3>");
e.printStackTrace();
 }
%>
 