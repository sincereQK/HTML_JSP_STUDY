<%@ page language="java" contentType="text/html; charset=EUC-KR" %>
<%@ page import="java.sql.*" %>  
<%@ page import="javax.naming.*" %>

<%@ page language="java" contentType="text/html; charset=EUC-KR"  pageEncoding="EUC-KR"%>
<%
Connection connection;
Statement statement;
ResultSet resultSet;

String driver = "oracle.jdbc.driver.OracleDriver"; 
String url="jdbc:oracle:thin:@localhost:1521:orcl";
String uid = "kmg";     
String upw = "pass123";
String query = "select * from student";
%>
<body>
<%
Class.forName(driver);
connection = DriverManager.getConnection(url, uid, upw);
statement = connection.createStatement();
// statement ��ü�� SQL �� �����ϱ� ���� ���
// �����ϴ� �������� �Ķ���ͷ� SQL���� �����ϴµ� API ��.
resultSet = statement.executeQuery(query);
// statement ��ü�� �̿��Ͽ� SQL�� ���� �� �����  ���� 
/* ������ ��� �����͸� resultSet �� ����� */
// statement �������̽��� SQL ���� ���� ������ �� �ִ�.
out.println(" ��ȣ "  + "  �̸� " +   "<br />");
out.println(" ====  ====== " +   "<br />");
while(resultSet.next())     // ó������ ������ 
{
int num = resultSet.getInt("num");
//  int num = resultSet.getInt(1);
String name = resultSet.getString("name");
//  String name = resultSet.getString(2);
out.println(num  + "&nbsp;&nbsp;&nbsp;" + name + "<br />");
}
if(resultSet != null)   resultSet.close();
if(statement != null)  statement.close();
if(connection != null) connection.close();
%>
</body>
