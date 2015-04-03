package eg;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
public class WebATOchange {

		public  void regis(String id,String pwd,String phone,String qq,String sex,String like) throws Exception {

			   Class.forName("oracle.jdbc.driver.OracleDriver");
				// 2.得到连接
				// DriverManager.getConnection("连接协议", "用户名", "密码");
				Connection conn2 = DriverManager.getConnection(
						"jdbc:oracle:thin:@127.0.0.1:1521:ORCL", "Study_user", "123456");

				// 3.得到SQL流
				Statement statement = conn2.createStatement();
				String sql2 = "UPDATE login   SET pwd ='"+pwd+"',phone='"+phone+"',qq='"+qq+"',sex='"+sex+"',glad='"+like+"' WHERE id='"+id+"'";// 要执行的sql语句
				System.out.println(sql2);
		System.out.println("修改成功");
					statement.execute(sql2);
					statement.close();
					conn2.close();
				
				}
				
	}



