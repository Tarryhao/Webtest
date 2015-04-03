<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%

request.setCharacterEncoding("UTF-8");
String[] gald=request.getParameterValues("like") ;
if(gald!=null){
for(int i=0;i<gald.length;i++){
//gald[i]=new String(gald[i].getBytes("ISO-8859-1"),"UTF-8");
System.out.println("爱好"+i+"="+gald[i]);
}
}
String hid=request.getParameter("hid");
//if(hid!=null){
//hid=new String(hid.getBytes("ISO-8859-1"),"UTF-8");
//}
System.out.println(hid);
%>


