<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
/**
 * 此页面用于管理员管理在线用户
 */
// 从容器里面取出全局变量map
    HashMap map = (HashMap)session.getServletContext().getAttribute("map");
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">

    <title>My JSP 'form.jsp' starting page</title>

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

<body class="templatemo-bg-image-3">

<div class="fa-align-justify">
    <div class="col-md-12">
        <div class="col-md-12">
            <form class="form-horizontal templatemo-login-form-2" role="form" >
                <div class="row">
                    <div class="col-md-12">
                        <h1>用户管理</h1>
                    </div>
                </div>
                <div class="row">
                    <%
                        if (map!=null) {
                            Iterator it = map.keySet().iterator();
                            while (it.hasNext()) {
                                String logname = (String) it.next();
                                out.println("用户："+logname + "&nbsp;&nbsp;<a href='KickOut?logname=" + logname + "'>踢了他！！！</a>  <br>");
                            }
                        }
                        else {
                            out.println("目前无用户登陆！");
                        }


                    %>
                </div>
            </form>
        </div>
    </div>
</div>
</body>
</html>
