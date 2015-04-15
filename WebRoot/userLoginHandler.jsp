<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="common.jsp" %>
<%@page import="eg.*" %>
<%
String id=request.getParameter("id");
String pwd=request.getParameter("pwd");
String rand = (String)session.getAttribute("rand");
String input = request.getParameter("rand");
if (rand.equals(input)) {
	WebLoginDAO t=new WebLoginDAO();
  	System.out.println(id+""+pwd);
	int ss=1;
 	ss=t.checkid(id, pwd);
  	System.out.println("check="+ss);
	if(ss==1){
		//存入登陆的用户logname
		RegistUser ee=new RegistUser();
		ee.setLogname(id);
		//登陆成功后根据ID取出用户全部信息，以方便用户修改界面预显示信息
		ee.get(id);
		session.setAttribute("user", ee);
		%><jsp:forward page="index2.jsp"/><%
	}
}
else{
  throw new Exception("验证码错误");
}

%>


