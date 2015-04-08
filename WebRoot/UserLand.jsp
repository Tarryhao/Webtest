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
    
    <title>注册</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

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
  function checkinput()
	{

	var pwd1=document.getElementById("pwd1").value;
	var pwd2=document.getElementById("pwd2").value;

	if (pwd1!=pwd2){
    alert("两次密码输入不相同！")
	}
	else{
	document.land.submit();
	}
	}
	
</script>
</head>
  <body>
  <div id="land">
  <form name="land" action="userRegisthandle.jsp" method="post">   
  <table>
  <tr><td><input type="hidden" name="hid" value="注册表"></td></tr>
<tr> <td> 用户名(*)：</td><td><input type="text" name="logname" id="logname"></td></tr>
  <tr> <td> 密码(*):</td><td><input type="password" name="pwd" id="pwd1"></td></tr>
 <tr> <td>  密码确认:</td><td><input type="password" id="pwd2"></td></tr>
 <tr> <td> 性别(*)：</td><td><input name="sex" type="radio" id="man" value="man" checked><label for="man">男</label><input name="sex" type="radio" id="women" value="women"><label for="women">女</label></td></tr>
<tr> <td> 出生日期：</td><td>
	<select name="出生年">
    <option value="1">1990</option>
    <option value="1">1991</option>
    <option value="1">1992</option>
    <option value="1" selected>1993</option>
    </select>
	<select name="出生月">
    <option value="1">01</option>
    <option value="1">02</option>
    <option value="1">03</option>
    <option value="1">04</option>
    </select>
    <select name="出生日">
    <option value="1">01</option>
    <option value="1">02</option>
    <option value="1">03</option>
    <option value="1">04</option>
    </select>
</td></tr>
<tr> <td> 家庭地址：</td><td><input type="text"></td></tr>
<tr> <td>手机号码(*)：</td><td><input type="text" name="phone" id="phone"></td></tr>
<tr> <td>QQ号码(*)：</td><td><input type="text" name="qq" id="qq"></td></tr>
<tr> <td>电子邮箱：</td><td><input type="text"></td></tr>
<tr> <td>兴趣爱好(*)：</td><td><input type="checkbox" name="like" value="zhuqiu" id="hobby">足球
		<input type="checkbox" name="like" value="yumaoqiu" id="hobby">羽毛球
		<input type="checkbox" name="like" value="wangqiu" id="hobby">网球
		<input type="checkbox" name="like" value="pingpong" id="hobby">乒乓球
		<input type="checkbox" name="like" value="taiqiu" id="hobby">台球</td></tr>
<tr> <td>个人简历：</td><td><textarea></textarea></td></tr>
<tr> <td>简历上传：</td><td><input type="file"><br/><br/></td></tr>
<tr> <td><input type="button" value="确认注册" onclick="checkinput()"></td></tr>
</table>
</form>
  </div>
  </body>
</html>
