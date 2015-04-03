<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page isErrorPage="true" %>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>error page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style type="text/css">
	#errormessages{
	position:absolute; 
top:50%; 
left:50%; 
margin:-150px 0 0 -200px; 
width:400px; 
height:300px; 
border:1px solid red; 
background-color:#FF6;
font-weight:bold;
line-height:300px;
text-align:center;
	}
	</style>

  </head>
  
  <body><div id="errormessages">
      <%
       String msg = exception.getMessage();
    %>
    错误信息：<%=msg %><br>
     
     </div>
  </body>
</html>
