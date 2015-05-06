<% //登陆副页，用于用户选择退出登陆后显示登陆页面%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="common.jsp" %>
<%@page import ="eg.JavaBean"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
    String idcookie="";
   
	Cookie[] cos=request.getCookies();
	if(cos!=null){
		for(int i=0;i<cos.length;i++){
		System.out.println(i+":"+cos[i].getName());
			if(cos[i].getName().equals("id")){
			idcookie=cos[i].getValue();
			}
			
		}
	} 

%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>用户登录</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link href="css/font-awesome.min.css" rel="stylesheet" type="text/css">
	<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
	<link href="css/bootstrap-theme.min.css" rel="stylesheet" type="text/css">
	<link href="css/bootstrap-social.css" rel="stylesheet" type="text/css">	
	<link href="css/templatemo_style.css" rel="stylesheet" type="text/css">	
  </head>
 

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
 <body class="templatemo-bg-image-1">
	<div class="fa-align-justify">
		<div class="col-md-12">			
			<form class="form-horizontal templatemo-login-form-2" role="form" name="login" action="UserLoginhandle" method="post">
				<div class="row">
					<div class="col-md-12">
						<h1>Nice to meet you！</h1>
					</div>
				</div>
				<div class="row">
					<div class="templatemo-one-signin col-md-6">
				        <div class="form-group">
				          <div class="col-md-12">		          	
				            <label for="username" class="control-label" >用户名</label>
				            <div class="templatemo-input-icon-container">
				            	<i class="fa fa-user"></i>
				            	<input type="text" class="form-control" id="id" name="id" autoComplete="off" value=<%=idcookie  %>>
				            </div>		            		            		            
				          </div>              
				        </div>
				        <div class="form-group">
				          <div class="col-md-12">
				            <label for="password" class="control-label" >密码</label>
				            <div class="templatemo-input-icon-container">
				            	<i class="fa fa-lock"></i>
				            	<input type="password" class="form-control" id="pwd" name="pwd" >
				            </div>
				          </div>
				        </div>
                        <div class="form-group">
				          <div class="col-md-12">		          	
				            <label for="username" class="control-label">验证码</label>
				            <div class="templatemo-input-icon-container">
				            	<i class="fa fa-lock"></i>
				            	<input type="text" class="form-control" id="yzin" name="rand" autoComplete="off">
                                <a href="javascript:void(0);" onclick="changerand();return false;"><img id="rand" src="code.jsp" >&nbsp;&nbsp;&nbsp;看不清楚？点击刷新</a>
				            </div>		            		            		            
				          </div>              
				        </div>
				        <div class="form-group">
				          <div class="col-md-12">
				            <div class="checkbox">
				                <label>
				                  <input type="checkbox" name="remember" id="remember" value="remember"> 记住我
				                  <input type="hidden" name="remember" id="remember" value="notremember"></input>
				                </label>
				            </div>
				          </div>
				        </div>
				        <div class="form-group">
				          <div class="col-md-12">
				            <input type="button"  onclick="check()" value="登陆" class="btn btn-warning">
				          </div>
				        </div>
				        <div class="form-group">
				          	<div class="col-md-12">
				        		<a href="#" class="text-center">无法登陆?</a>
				       	 	</div>
				    	</div>
					</div>
					<div class="templatemo-other-signin col-md-6">
						<label class="margin-bottom-15">
							用户注册
						</label>
						<a class="btn btn-block btn-social btn-facebook margin-bottom-15" onclick="land()">
						    普通注册
						</a>
						<a class="btn btn-block btn-social btn-twitter margin-bottom-15" onclick="land()">
						    手机快速注册
						</a>
						<a class="btn btn-block btn-social btn-google-plus" onclick="land()">
						    邮箱注册
						</a>
					</div>   
				</div>				 	
		      </form>		      		      
		</div>
	</div>
</body>
</html>
