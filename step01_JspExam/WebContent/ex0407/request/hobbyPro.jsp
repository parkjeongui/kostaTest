<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

</style>
<script>

</script>
</head>
<body>
<%
  //post방식 한글인코딩처리  --> Filter 개념 적용
  request.setCharacterEncoding("UTF-8");
%>

<h3>
 이름 : <%=request.getParameter("name") %> <br>
 나이 : <%=request.getParameter("age") %><br>
 
 <!-- 하나의 name으로 값 여러개 받기 -->
 취미 : 
  <%
    String hobbys [] = request.getParameterValues("hobby");
    for(String h : hobbys){
    	out.print(h+",");
    }
  %>
 
 <br>
 접속자 IP : <%=request.getRemoteAddr()%><br>

</h3>

</body>
</html>






