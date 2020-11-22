<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
 <!--  moneyBean  클래스를 이 파일로  import 함 -->
 <%@ page import="moneychange.moneyBean"%>
 
<% request.setCharacterEncoding("euc-kr"); %>
 
<body><br>
<%
     String money = request.getParameter("money");
     /* 전달되어 온 것을 받아 저장함 */
     int won = Integer.parseInt(money);
%>
<!-- MC 객체 생성 -->
<% moneyBean MC = new moneyBean(); %>
<!-- moneyBean에 있는 getNumber()메소드 호출 -->
한국 돈   <%= MC.getNumber(won) %>  원을 ,  <br>  

<!-- moneyBean에 있는 America()메소드 호출 -->
미국 돈으로 환전하면   <%= MC.America(won) %>  달러고 ,  <br>

<!-- moneyBean에 있는 Japan()메소드 호출메소드 호출 -->
일본 돈으로 환전하면   <%= MC.Japan(won) %>  엔이다 ,  <br>

<!-- 이런방식은 쓰면 안되요!! -->
</body> 
