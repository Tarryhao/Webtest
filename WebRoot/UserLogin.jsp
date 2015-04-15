<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="common.jsp" %>
<%@page import ="eg.JavaBean"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
     
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'UserLogin.jsp' starting page</title>
    
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
 body{ font-family:Arial, Segoe UI;background-color:rgb(0, 0, 0);
	background-image:url(images/bg.jpg);
	background-repeat: repeat;
	 background-position: center center;
	     background-attachment: fixed;
		 margin:0;
		 padding:0;
	 user-select:none;
-moz-user-select:none;
-webkit-user-select:none;
-ms-user-select:none;
-webkit-background-size: cover;
-moz-background-size: cover;
-o-background-size: cover;
background-size: cover;
overflow:hidden;
z-index:0;
color:rgb(255, 0, 0);
	
	}

#login{
width:500px;
height:300px;
position:absolute; 
top:25%; 
left:55%; 
margin:-150px 0 0 -200px;
text-color:#000;
}
</style>

  <script type="text/javascript">
  function land()
{
	window.location.href = 'UserLand.jsp';
}
var x;
var y;
function check()
{
  	
    x = document.getElementById("id").value;
  
    y = document.getElementById("pwd").value;
     var inputCode = document.getElementById("yzin").value;
    if (x==""){
    alert("账号不能为空")
    }
  
    else if (y==""){
    alert("密码不能为空")
    }
  
      else if(inputCode.length <=0)
       {
           alert("请输入验证码！");
       }
       else
       {
       document.login.submit();
       }
}
//验证码点击刷新
 function changerand()
{
	document.getElementById('rand').src="code.jsp";
}
 //添加回车键事件
  document.onkeydown=function(e){
	var keycode=document.all?event.keyCode:e.which;
	if(keycode==13) check();
}
    
</script>
  <body>
  <div id="login">
    <form name="login" action="userLoginHandler.jsp" method="post" >
    <table><tr><td>
    用户名</td><td><input type="text" id="id" name="id"></td></tr>
    <tr><td>
    密&nbsp;&nbsp;码</td><td> <input type="password" id="pwd" name="pwd"></td></tr>
    <tr><td>  
    验证码</td><td><input type="text" id="yzin" name="rand"><a href="javascript:void(0);" onclick="changerand();return false;"><img id="rand" src="code.jsp" ></a></td></tr>
    <tr><td>
    <input type="button" value="提交" onclick="check()" ></td><td>
    <input type="button" value="注册" onclick="land()" ></td></tr>
    
      </table> 
    </form>
    </div>
  </body>
</html>
