<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="common.jsp" %>
<%@page import="eg.*" %>
<%
String id=request.getParameter("id");
String pwd=request.getParameter("pwd");
WebATOchecklogin t=new WebATOchecklogin();
  System.out.println(id+""+pwd);
int ss=1;
 ss=t.checkid(id, pwd);
  System.out.println("check="+ss);
if(ss==1){
//存入登陆的用户logname
RegistUser ee=new RegistUser();
ee.setLogname(id);
ee.get(id);
session.setAttribute("user", ee);
%><jsp:forward page="index2.jsp"/><%
}

%>


