<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%
    response.setHeader("Cache-Control","no-store");
   %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

</style>
<script src="../../../js/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
  $(function(){
	  //로그아웃 버튼 클릭
	  $("input[type=button]").click(function(){
		  if(confirm("정말 아웃할래???")){
			  location.href="Logout.jsp";
		  }
	  });
  });

</script>


</head>
<body>
 <%
   if(session.getAttribute("sessionName")==null){//인증되었니???
	 %>
	   <script type="text/javascript">
	     alert("로그인하고 이용해주세요.");
	     location.href="LoginForm.html";
	   </script>
	 <%  
	   
   }else{
	  %>
	   <h3>
	   [접속시간 : <%=session.getAttribute("sessionTime") %>] <p>
       <%=session.getAttribute("sessionName") %>님 로그인 되었습니다.<p>
       <img src="images/common.jpg"/>
       <input type="button" value="로그아웃"  />
       </h3>
	  <% 
   }
 %>



</body>
</html>















