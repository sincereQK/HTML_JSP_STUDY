<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<body>
<%
    session.invalidate();  // ���ǰ��� �����Ѵ�.
     response.sendRedirect("loginForm.jsp");
     // �׸��� �α��� â���� �������Ѵ�.
%>
</body>
