<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="common.jsp" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<head>
    <title>用户注册</title>
    <meta name="keywords" content="" />
    <meta name="description" content="" />
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <link href="css/bootstrap-theme.min.css" rel="stylesheet" type="text/css">
    <link href="css/templatemo_style.css" rel="stylesheet" type="text/css">

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
<body class="templatemo-bg-image-2">
<div class="container">
    <div class="col-md-12">
        <form class="form-horizontal templatemo-contact-form-1" name="land" action="UserRegistHandle" method="post">
            <div class="form-group">
                <div class="col-md-12">
                    <h1 class="margin-bottom-15">用户注册</h1>
                </div>
            </div>
            <div class="form-group">
                <div class="col-md-12">
                    <label for="name" class="control-label">用户名 *</label>
                    <div class="templatemo-input-icon-container">
                        <i class="fa fa-user"></i>
                        <input type="text" class="form-control" id="name" name="logname" >
                    </div>
                </div>
            </div>

            <div class="form-group">
                <div class="col-md-12">
                    <label for="subject" class="control-label">密码 *</label>
                    <div class="templatemo-input-icon-container">
                        <i class="fa fa-info-circle"></i>
                        <input type="password" class="form-control"    name="pwd" id="pwd1">
                    </div>
                </div>
            </div>

            <div class="form-group">
                <div class="col-md-12">
                    <label for="subject" class="control-label">密码确认 *</label>
                    <div class="templatemo-input-icon-container">
                        <i class="fa fa-info-circle"></i>
                        <input type="password" class="form-control"    name="pwd" id="pwd2">
                    </div>
                </div>
            </div>



            <div class="form-group">
                <div class="col-md-12">
                    <label for="subject" class="control-label">性别 *：</label>

                    <label>
                        <input name="sex" type="radio" id="man" value="man" checked><label for="man">男&nbsp</label><input name="sex" type="radio" id="women" value="women"><label for="women">&nbsp女</label>
                    </label>

                </div>
            </div>

            <div class="form-group">
                <div class="col-md-12">
                    <label for="subject" class="control-label">手机号 *</label>
                    <div class="templatemo-input-icon-container">
                        <i class="fa fa-envelope-o"></i>
                        <input type="text" class="form-control" name="phone" id="phone">
                    </div>
                </div>
            </div>

            <div class="form-group">
                <div class="col-md-12">
                    <label for="website" class="control-label">QQ号 *</label>
                    <div class="templatemo-input-icon-container">
                        <i class="fa fa-globe"></i>
                        <input type="text" class="form-control" name="qq" id="qq">
                    </div>
                </div>
            </div>

            <div class="form-group">
                <div class="col-md-12">
                    <label for="subject" class="control-label">爱好 *：</label>

                    <label>
                        <input type="checkbox" name="like" value="taiqiu" id="hobby">&nbsp台球&nbsp; <input type="checkbox" name="like" value="zhuqiu" id="hobby">足球&nbsp;<input type="checkbox" name="like" value="yumaoqiu" id="hobby">羽毛球
                    </label>

                </div>
            </div>

            <div class="form-group">
                <div class="col-md-12">
                    <label for="email" class="control-label">Email</label>
                    <div class="templatemo-input-icon-container">
                        <i class="fa fa-envelope-o"></i>
                        <input type="email" class="form-control" id="email" placeholder="">
                    </div>
                </div>
            </div>


            <div class="form-group">
                <div class="col-md-12">
                    <label for="message" class="control-label">自我简介</label>
                    <div class="templatemo-input-icon-container">
                        <i class="fa fa-pencil-square-o"></i>
                        <textarea rows="8" cols="50" class="form-control" id="message" placeholder=""></textarea>
                    </div>
                </div>
            </div>
            <div class="form-group">
                <div class="col-md-12">

                        <label>
                            <input type="checkbox"> 同意<a href="#">我的条件</a>.
                        </label>

                </div>
            </div>
            <div class="form-group">
                <div class="col-md-12">
                    <input type="submit" value="完成注册" class="btn btn-success pull-right">
                </div>
            </div>
        </form>
    </div>
</div>
</body>
</html>
