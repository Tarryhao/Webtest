<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="common.jsp" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Test.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <%String name="Jack";
    String masg="欢迎您!";
     %>
     <br>
     <%=name %><br>
     <%=name.length() %><br>
     <%=name+","+masg %><br>
     <%=3.1415 %>
     <table border="1">
     <tr><td width="100px"><%="节数/星期"%></td>
     <%
     for(int i=1;i<=7;i++){
      %>
      <td width="100px"><%="星期"+i%></td>
      <%} %></tr>
      
     <%
     for(int i=1;i<=10;i++){
      %>
      <tr> <td width="100px"><%="第"+i+"节"%></td>
       <%
     for(int y=1;y<=7;y++){
      %>
      <td width="100px"><%=" "%></td>
      <%} %>
       </tr>
      <%} %>
     
     </table>
  </body>
</html>
