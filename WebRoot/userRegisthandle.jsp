
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="eg.RegistUser" %>
<%@ page import="eg.WebRegistDAO" %>
<%@ include file="common.jsp" %>
<%
	//用于注册储存

//接收对象
String logname=request.getParameter("logname");
String pwd=request.getParameter("pwd");
String phone=request.getParameter("phone");
String qq=request.getParameter("qq");
String sex=request.getParameter("sex");
String[] cbox=request.getParameterValues("like");
String cboxstr="";
if(cbox!=null){
for(int i=0;i<cbox.length;i++){
		cboxstr=cboxstr+cbox[i]+",";
	}
}
//存入对象
RegistUser ru=new RegistUser();
ru.setLogname(logname);
ru.setPassword(pwd);
ru.setPhone(phone);
ru.setQQ(qq);
ru.setLike(cboxstr);
if(sex!=null){
ru.setSex(sex);}
//将对象暂存到session中
session.setAttribute("user", ru);
//存入数据库中
WebRegistDAO ato=new WebRegistDAO();
//执行数据库操作
ato.regis(ru);

//跳转到主页
response.sendRedirect("index2.jsp");
%>


