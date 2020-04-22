<%@page import="java.util.Date"%>

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
   String dbId="jang", dbPwd="1234";
 
    String userId = request.getParameter("userId");
    String userPwd = request.getParameter("userPwd");
    String userName = request.getParameter("userName");
    
    if(dbId.equals(userId) && dbPwd.equals(userPwd)){
    	//인증된 사용자의 정보를 session에 저장한다.
    	session.setAttribute("sessionName", userName);
    	session.setAttribute("sessionTime", new Date().toLocaleString());
    	
    	//쿠키에 현재 인증된 사용자의 id를 저장한다.
    	Cookie cookie = new Cookie("lastId",userId);
    	cookie.setMaxAge(60*60*24*365);//365일
    	cookie.setPath("/");
    	
    	response.addCookie(cookie);
    	
    	//이동하기
    	response.sendRedirect("LoginOk.jsp");
    
    }else{
    	
    	out.println("<script>");
    	out.println("alert('"+userName+"님 정보를 확인해줘라...')");
    	out.println("history.back()");
    	out.println("</script>");
    	
    	//메시지 출력
      %>
      <%--  <script type="text/javascript">
          alert("<%=userName%>님 정보를 확인해주세요.");
          //location.href="LoginForm.html";
          history.back(); //뒤로가기
       </script> --%>
      <%
    	//response.sendRedirect("LoginForm.html");
    }
 
 %>


</body>
</html>










