<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<body>
<h4>������ �� ������(forwardTest2.jsp)</h4>
<table>
<tr><td>�̸�</td><td> <%=request.getParameter("name") %></td>	</tr>
<tr><td>����</td><td> <%=request.getParameter("age") %></td>	</tr>
<tr><td>�ּ�</td><td> <%=request.getParameter("address") %></td></tr>
<tr><td>��ȭ��ȣ</td><td> <%=request.getParameter("tel") %></td>	</tr>
</table>
</body>
