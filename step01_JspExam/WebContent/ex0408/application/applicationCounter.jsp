<%@page import="java.util.concurrent.atomic.AtomicInteger"%>
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
<%--
   // apllication에 저장된 count수를 가져온다.
   Object obj = application.getAttribute("count");

  if(obj==null){//한번도 저장한적이 없다...
	  application.setAttribute("count", 0);
      obj = application.getAttribute("count");  
  }
   
   //읽어온 값에 +1을 하고 다시 저장한다.
   int count = (Integer)obj;
   if(session.isNew()){
	   count++;
	   application.setAttribute("count", count);
   }
 --%>
 
 <%
	//apllication에 저장된 count수를 가져온다.
	 Object obj = application.getAttribute("count");
	
	if(obj==null){//한번도 저장한적이 없다...
		  application.setAttribute("count", new AtomicInteger());
	     obj = application.getAttribute("count");  
	}
	
	AtomicInteger it = (AtomicInteger)obj;
	int count = it.get();//현재 값 가져오기
	if(session.isNew()){
		
		count = it.incrementAndGet();
	}
 
 
 %>

<h3> 방문자 수 : <%=count%> 명</h3>

</body>
</html>


