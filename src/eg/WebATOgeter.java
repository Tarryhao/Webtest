//package eg;
////本类用于用户登陆后修改信息时从数据库取出
//import java.sql.Connection;
//import java.sql.DriverManager;
//import java.sql.ResultSet;
//import java.sql.Statement;
//public class WebATOgeter {
//
//		public  void get(String id,String pwd) throws Exception {
//			   
//			   Class.forName("oracle.jdbc.driver.OracleDriver");
//				// 2.得到连接
//				// DriverManager.getConnection("连接协议", "用户名", "密码");
//				Connection conn = DriverManager.getConnection(
//						"jdbc:oracle:thin:@127.0.0.1:1521:ORCL", "Study_user", "123456");
//
//				// 3.得到SQL流
//				Statement statement = conn.createStatement();
//				
//				String sql = "select * from login where id='"+id+"'";// 要执行的sql语句	
//				ResultSet exe = statement.executeQuery(sql);
//				
//				if (exe.next()) {
//					String phone=exe.getString("phone");
//					String qq=exe.getString("qq");
//					String sex=exe.getString("sex");
//					String like=exe.getString("glad");
//					System.out.println(phone);
//				    RegistUser res=new RegistUser();
//				    res.setLogname(id);
//				    res.setPassword(pwd);
//				    res.setPhone(phone);
//				    res.setQQ(qq);
//				    res.setSex(sex);
//				    res.setLike(like);
//				 
//					
//					//关闭连接
//					statement.close();
//					conn.close();
//					
//					
//					}
//				}
//				
//		
//				
//	}
//
//
//
