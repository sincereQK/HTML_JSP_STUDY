<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<body>
<h3>������ �׼� �׽�Ʈ</h3>
<table>
<form action="forwardTest1.jsp" method="POST">
<input type="hidden" name="forwardPage" value="forwardTest2.jsp">
        <!-- forwardPage�� forwardTest2.jsp�� ���߾ ���� -->
<tr><td>�̸�</td><td><input type="text" name="name"></td></tr>
<tr><td>����</td><td><input type="text" name="age"></td></tr>
<tr><td>�ּ�</td><td><input type="text" name="address"></td></tr>
<tr><td><input type="submit" value="����"></td></tr>
</form>
</table>
</body>
