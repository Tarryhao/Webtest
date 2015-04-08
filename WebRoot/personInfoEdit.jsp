<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="eg.RegistUser" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
//从session中取出对象
RegistUser ru=(RegistUser)session.getAttribute("user");
String logname=ru.getLogname();
String pwd=ru.getPassword();
String phone=ru.getPhone();
String qq=ru.getQQ();
String like=ru.getLike();
String sex=ru.getSex();
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>修改信息</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
   <style type="text/css">
#land{
width:500px;
margin:0 auto;
}
</style>
  <script type="text/javascript">
  function login()
{
	window.location.href = 'UserLogin.jsp';
	
}
</script>
  <body>
  <div id="land">
  <form action="userChangeHandler.jsp" method="post">   
  <table>
  <tr><td><input type="hidden" name="hid" value="修改信息表"></td></tr>
  <tr> <td> 用户名:</td><td><input type="text" readonly name="logname" value=<%=logname %>></td></tr>
  <tr> <td> 密码:</td><td><input type="text" name="pwd" value=<%=pwd %>></td></tr>
<tr> <td>手机号码：</td><td><input type="text" name="phone" value=<%=phone %>></td></tr>
<tr> <td>QQ号码：</td><td><input type="text" name="qq" value=<%=	qq %>></td></tr>
<tr> <td> 性别：</td><td><input name="sex" type="radio" id="sex1" value="man"
<%if(sex.equals("man")){ %>checked<%} %>
><label for="sex1">男</label>
<input name="sex" type="radio" id="sex2" value="women"
<%if(sex.equals("women")){ %>checked<%} %>
><label for="sex2">女</label></td></tr>
<tr> <td>兴趣爱好：</td><td><input type="checkbox" name="like" value="zhuqiu"
		<%if(like.indexOf("zhuqiu")>=0){ %>checked<%} %>
		>足球
		<input type="checkbox" name="like" value="yumaoqiu" 
		<%if(like.indexOf("yumaoqiu")>=0){ %>checked<%} %>
		>羽毛球
		<input type="checkbox" name="like" value="wangqiu"
		<%if(like.indexOf("wangqiu")>=0){ %>checked<%} %>
		>网球
		<input type="checkbox" name="like" value="pingpong"
		<%if(like.indexOf("pingpong")>=0){ %>checked<%} %>
		>乒乓球
		<input type="checkbox" name="like" value="taiqiu"
		<%if(like.indexOf("taiqiu")>=0){ %>checked<%} %>
		>台球</td></tr>
<tr> <td><input type="submit" value="确认修改" ></td></tr>
</table>
</form>
  </div>
  </body>
</html>