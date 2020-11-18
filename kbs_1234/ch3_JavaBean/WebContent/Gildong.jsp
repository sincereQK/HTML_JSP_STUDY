<%@ page language="java" contentType="text/html; charset=EUC-KR"%>

<jsp:useBean id= "gd" class="Join.Gildong" scope="page"/>

<%-- <jsp:setProperty name= "gd" property= "name" value="KBS"/> --%>

<jsp:setProperty name= "gd" property= "name" param="name"/>

<body>
<b>자바빈 사용 예제</b><br>

<h4>  <%= gd.getName() %>	</h4>
<h4>  <jsp:getProperty name= "gd" property= "name" /></h4> 


</body>
