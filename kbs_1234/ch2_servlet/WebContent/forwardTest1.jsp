<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<body>
<!--  name="forwardPage" value="forwardTest2.jsp" -->
<!-- �� ���������� forwardPage�� forwardTest2.jsp �� ����Ǿ� ���� -->
<jsp:forward page='<%=request.getParameter("forwardPage") %>' >
        <jsp:param name="tel" value="032-1234-5678"/>
</jsp:forward>
<!-- �Ķ���ͷ� ���� ������ ���� param�� ��� -->
<!-- ���⼭ �ٽ� tel �� �����Ͽ� forwardPage �� 
<!-- ��, forwardTest2.jsp ��  ���� -->
</body>
