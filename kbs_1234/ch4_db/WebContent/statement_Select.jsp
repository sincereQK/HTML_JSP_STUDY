<%@ page language="java" contentType="text/html; charset=EUC-KR"%>
<%@ page import="java.sql.*"%>  
<%@ page import="javax.sql.*" %>
<%@ page import="javax.naming.*" %>
<%
int i=0;  
String sql="SELECT * FROM student";
String driver="oracle.jdbc.driver.OracleDriver"; 
String url="jdbc:oracle:thin:@localhost:1521:orcl";
try {
Class.forName(driver); 
Connection con = DriverManager.getConnection(url, "kmg","pass123");
Statement stmt = con.createStatement();
ResultSet rs = stmt.executeQuery(sql);
%>
<body> <center>
 <h4> [ �л�   �˻� ] </h4>
 <table border="1" cellspacing="1">
    <tr> <th>NO</th> <th>�й�</th> <th>�̸�</th> </tr>
<%
    // 6�ܰ�: ��� ��  �ݺ� ó��
    while ( rs.next() )  {
%><tr> <td><%= ++i %></td>
           <td><%= rs.getInt(1) %> </td>
           <td><%= rs.getString(2) %> </td>  
  </tr>
<%
 }
 %>
 </table> 
<% // 7�ܰ�: ����� �ڿ� ����
 rs.close();
 stmt.close();
 con.close();
%>
 <h4>DB���� ���������� �˻� �Ǿ����ϴ�!!!</h4>
<%
 } catch (SQLException e) {
%>
   <h4>������ �߻� �߱���. �ٽ� Ȯ���� ������!!!</h4>
<% 
} 
%>
</center>
</body>
 