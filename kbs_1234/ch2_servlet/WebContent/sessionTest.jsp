<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
      session.setMaxInactiveInterval(10);   // 10�� 
%>
<body>
<h4>���� �׽�Ʈ</h4>
isNew() : <%=session.isNew()%><br>  <%-- ó���̸�  true --%>
ó�� �����ð� : <%=session.getCreationTime()%><br>
������  ���� �ð�: <%=session.getLastAccessedTime()%><br>
����ID : <%=session.getId()%> <br>
<!-- ���Ǹ��� �ٸ� �� �ο��� --> 
</body>
