<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% request.setCharacterEncoding("euc-kr"); %>
 
<jsp:useBean id="MC" class="moneychange.MoneyChange" />
 <!--  moneychange ��Ű���� �ִ�   MoneyChange Ŭ������  
       �̿��Ͽ�  MC ��� �ϴ� ��ü�� �����Ѵ�. -->
    
<jsp:setProperty name="MC" property="*" />
  <!-- ������ ������ MC ��� ��ü�� ������
     �Է� ���� ������ �ѹ��� �����ϱ� ���� property="*" �� ó�� -->
<body>
<br>
<!-- �Ӽ� �� ȣ�� -->
�ѱ� ��   <%= MC.getNumber() %>  ���� ,  <br>  

<!-- MoneyChange.java �� �ִ� America()�޼ҵ� ȣ�� -->
�̱� ������ ȯ���ϸ�   <%= MC.America() %>  �޷��� ,  <br>

<!-- MoneyChange.java �� �ִ� Japan()�޼ҵ� ȣ��޼ҵ� ȣ�� -->
�Ϻ� ������ ȯ���ϸ�   <%= MC.Japan() %>  ���̴� ,  <br>

</body>
     