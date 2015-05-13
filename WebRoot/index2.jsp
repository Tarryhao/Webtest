<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="common.jsp" %>
<%@ page import="eg.RegistUser" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
//从session中取出对象.
String logname=(String)session.getAttribute("logname");


%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
      <script type="text/javascript">

          function go(){

              window.location = "index2.jsp";

          }
      </script>
      <style type="text/css">

          #north{ width:1000px;
              height:200px;
              margin:0 auto;
              background-color:#FF6;

          }
          #south{ width:1000px;
              margin:0 auto;
              height:1000px;

          }
          #west{ width:300px;
              height:1000px;
              float:left;
              background-color:#0FF;
          }
          #center{width:700px;
              height:1000px;
              float:right;
              background-color:#F03;
          }
      </style>
  </head>

  <body>
  <div id="north">logo
  <script type="text/javascript">
document.write((time=new Date()).getFullYear()+"年"+(time.getMonth()+1)+"月"+time.getDate() + "日 星期"+"日一二三四五六".charAt(time.getDay())+ " "+time.getHours() +":"+time.getMinutes()+":"+time.getSeconds());

</script>
<<<<<<< HEAD
<div id="user">
    <%
    if(logname==null){
    %>
    对不起，您已经被踢出系统！|<a href="index.jsp">重新登陆</a></div>
    <%
    } else {
    %>
    欢迎   Dear.${logname} 登陆系统.|<a href='UserLogOut?logname=${logname} '>退出登陆</a>丨<a href="personInfoEdit.jsp">修改信息</a></div>
    <%
        }
    %>
      <script type="text/javascript">
          setTimeout(go,3000);
      </script>
=======
<div id="user">Dear.<%=logname %>欢迎您登陆 <a href="index.jsp">退出登陆</a>丨<a href="personInfoEdit.jsp">修改信息</a>丨<a href="Usertips.jsp">我要留言</a></div>
>>>>>>> origin/master
  </div>
<div id="south">
<div id="west">系统功能菜单区</div>
<div id="center">内容区
</div>
</div>
  </body>
</html>
