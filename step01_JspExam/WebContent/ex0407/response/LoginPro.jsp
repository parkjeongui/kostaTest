<%@page import="java.net.URLEncoder"%>
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
    	//새로운 request,response생성되어 이동하므로 필요한 정보 전송한다.
    	//response.sendRedirect("LoginOk.jsp?userName="+ URLEncoder.encode(userName, "UTF-8"));
    
        //forward방식으로 이동하기 - 메소드 이동
        RequestDispatcher rd = request.getRequestDispatcher("LoginOk.jsp");
        rd.forward(request, response);      
    
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










