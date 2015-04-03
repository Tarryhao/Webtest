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
#login{
width:500px;
height:300px;
position:absolute; 
top:50%; 
left:50%; 
margin:-150px 0 0 -200px;
text-color:#000;
}
#checkCode{
background-image:url(images/3G.gif);
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
       else if(inputCode != code )
       {
          alert("验证码输入错误！");
          createCode();//刷新验证码
       }
       else
       {
       document.login.submit();
       }
}
var code ; //在全局 定义验证码
     function createCode()
     { 
       code = "";
       var codeLength = 4;//验证码的长度
       var checkCode = document.getElementById("checkCode");
       var selectChar = new Array(0,1,2,3,4,5,6,7,8,9,'A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z');//所有候选组成验证码的字符
         
       for(var i=0;i<codeLength;i++)
       {
       
         
       var charIndex = Math.floor(Math.random()*36);
       code +=selectChar[charIndex];
        
        
       }
       if(checkCode)
       {
         checkCode.className="code";
         checkCode.value = code;
       }
        
     }
      
    
</script>
  <body>
  <div id="login">
    <form name="login" action="Zhongzhuan.jsp" method="post" >
    用户名<input type="text" id="id" name="id"><br/>
    
    密&nbsp;码 <input type="password" id="pwd" name="pwd"><br/>
      
    验证码<input type="text" id="yzin"><input type="text" onclick="createCode()" readonly="readonly" id="checkCode" class="unchanged" style="width: 80px" value="点击生成验证码" /><br/>
    <input type="button" value="提交" onclick="check()" >
    <input type="button" value="注册" onclick="land()" >
    
       
    </form>
    </div>
  </body>
</html>
