<%@ page language="java" contentType="text/html; charset=EUC-KR"  pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*"%>
<%
request.setCharacterEncoding("euc-kr");
int num1 = Integer.parseInt(request.getParameter("num"));
String name1 = request.getParameter("name");
// ���������� �����Ǿ� �Ѿ��  ������
Connection conn=null;
PreparedStatement pstmt=null;
ResultSet rs=null;
String driver="oracle.jdbc.driver.OracleDriver";  
String url="jdbc:oracle:thin:@localhost:1521:orcl";
Class.forName(driver);  //����̹� �̸����� ����̹��� �ε�
conn=DriverManager.getConnection(url,"kmg","pass123"); 
          
 // String SQL="update student set name = ? ";  // �̸� ��ü�� ���� �� - �̷����ϸ� ū�� ��.
  String SQL="update student set name = ? where num = ? ";
  pstmt=conn.prepareStatement(SQL);
 // name �� num  ������ ���� - Table�� �ʵ� ������ �ƴ�
  pstmt.setString(1,name1);  // name
  pstmt.setInt(2,num1);         // num
  int result=pstmt.executeUpdate();  // select �� �ƴϹǷ� 
%>
<a href="statement_Select.jsp "> ����Ʈ�� ���� </a> 
