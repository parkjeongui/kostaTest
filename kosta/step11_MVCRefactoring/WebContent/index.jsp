<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
 a{text-decoration: none;}
</style>
<script>

</script>
</head>
<body>
<h1> WEB MVC Refactoring TEST </h1>

<h3>
 <a href="${pageContext.request.contextPath}/front?key=insert"> 등록하기 </a><p>
 <a href="${pageContext.request.contextPath}/front?key=select"> 검색하기 </a><p>
 <a href="${pageContext.request.contextPath}/front?key=update"> 수정하기 </a><p>
 <a href="${pageContext.request.contextPath}/front?key=delete"> 삭제하기 </a><p>
</h3>


</body>
</html>