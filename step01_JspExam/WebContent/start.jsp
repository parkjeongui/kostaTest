
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>���� �����~~^^</h1>
<%--
   //�ڹ��ڵ�...�ۼ�
   String name="����";

   out.println(name+"�� �ݰ�����:"); //������ ���
   
   System.out.println("�� ��� ��µǴ� ??");//�ܼ�(����â)�� ���
  --%>

<h3>���� ������ �� ����??</h3>
<% 
  String menu="¥�� �ƴ� «��";
%>

<h3>�޴� : <%=menu %></h3>

�޼ҵ� ȣ�� : <%=test(20) %>


<%!
   String name;
   int age;
   
   //�޼ҵ� ����
   public String test(int age){
	   System.out.println("test�޼ҵ� ȣ�� �Ǿ����ϴ�...");
	   return age+"�� �Դϴ�...";
   }
%>

<%
  
   Date today = new Date();
%>
<%=today.toLocaleString() %>

<hr>
<%
   out.println("������?<br>");
   out.println("�ڰ� �ʹ�?<br>");
   out.println("���� �ʹ�...?<br>");
%>


<hr>
<%
   out.print("������?<br>");
   out.print("<h1 style='color:red'>�ڰ� �ʹ�?</h1>");
   out.print("���� �ʹ�...?<br>");
%>


</body>
</html>






