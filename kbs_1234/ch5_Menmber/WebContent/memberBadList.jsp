<%@ page language="java" contentType="text/html; charset=EUC-KR"%>
<%@ page import="java.sql.*"%>
<%@ page import="javax.naming.*" %>
<%
    request.setCharacterEncoding("euc-kr");
   
     String id=null;
     Connection conn=null;
     PreparedStatement pstmt=null;
     ResultSet rs=null;

     String driver="oracle.jdbc.driver.OracleDriver";  //����̹� �̸� ����
String url="jdbc:oracle:thin:@localhost:1521:orcl";

try {
Class.forName(driver);  //����̹� �̸����� ����̹��� �ε�
    conn=DriverManager.getConnection(url,"kmg","pass123");
// �ҷ� ȸ���� status �� 1�� ����̹Ƿ� status �� 1 �� �͸� �ҷ���
pstmt=conn.prepareStatement("SELECT * FROM member where status=1");
rs=pstmt.executeQuery();
}catch(Exception e){
e.printStackTrace();
}
%>
     
  <html><head>
<title>ȸ������ �ý��� �����ڸ��(ȸ�� ��� ����)</title>
</head><body><center>
<table border=1 width=400>
<tr align=center><td colspan=2>�ҷ� ȸ�� ���</td></tr>
<%while(rs.next()){%>
<tr align=center>
<td>
<a href="memberBadInfo.jsp?id=<%=rs.getString("id") %>">
<%=rs.getString("id") %>
</a>
</td>
<td><%=rs.getString("name") %></td>
</tr>
<%} %>
</table>
</center></body></html>   