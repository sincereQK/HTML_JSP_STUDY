<%@ page language="java" contentType="text/html; charset=EUC-KR"%>
<%@ page import="java.sql.*"%>  
<%@ page import="javax.naming.*" %>

<% request.setCharacterEncoding("UTF-8"); %>
<%
int num   = Integer.parseInt((String)request.getParameter("num"));
String name = request.getParameter("name");
     
String sql = "INSERT INTO student(num, name) VALUES(?,?)";
                           // preparedStatement ������� ó��
String driver="oracle.jdbc.driver.OracleDriver";  
String url="jdbc:oracle:thin:@localhost:1521:orcl";

try {
Class.forName(driver);  
Connection con = DriverManager.getConnection(url, "kmg", "pass123");
PreparedStatement pstmt = con.prepareStatement(sql);   
pstmt.setInt(1,num);
pstmt.setString(2,name);    
pstmt.executeUpdate();  // 
pstmt.close();
con.close();
out.println("<h4>student ���̺� �� ���� ���� ��!!!</h4>");    
} catch (SQLException e) {
    out.println("<h4>������ �߻�. �ٽ� Ȯ���� ������!!!</h4>");
} %>
<a href="statement_Select.jsp"> ��� Ȯ���Ϸ� ����</a>
