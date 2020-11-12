<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%!       // 선언문 
     int age;
%>
<%
String str=request.getParameter("age");
age=Integer.parseInt(str);    // 형변환
if(age>=20)  
 {  
   response.sendRedirect("pass.jsp?age="+age);  
 }
else  
{  
   response.sendRedirect("ng.jsp?age="+age);
}
%>

</body>
</html>