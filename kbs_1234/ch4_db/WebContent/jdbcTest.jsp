 <%@ page language="java" contentType="text/html; charset=EUC-KR"%>
 <%@ page import="java.sql.*" %> 
 <%
 Connection conn=null;  // Ŀ�ؼ� ��ü conn ����
 String driver="oracle.jdbc.driver.OracleDriver";  // JDBC ����̹� �̸� ����
 String url="jdbc:oracle:thin:@localhost:1521:orcl"; 
     //����̹� ����Ͽ� ������ URL , ��  DB �� �ִ� ��ġ

 Boolean connect=false;   // ��� ������ ���� 
 Class.forName(driver);  // drivee  �̸����� OracleDriver �ε�
 conn=DriverManager.getConnection(url,"kmg","pass123");
      // DriverManager�� �̿��Ͽ� Connection ��ü�� ���´�.
 connect=true;    // ���������� ������ �Ǹ�
 conn.close(); // ������ ���̽� ���� ����
 %>
 <body> <h3>
 <% if(connect==true){ %>
 ���� �� ,  DB  ����  ������
 <%
 } 
 else { 
 %>
 DB ���ῡ ����-4�� ó������ �ٽ� �ؾ� ��
 <%
 } 
 %>   
 </h3>   </body>
 