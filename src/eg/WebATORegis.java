package eg;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
public class WebATORegis {

		public  void regis(String id,String pwd,String phone,String qq,String sex,String like) throws Exception {

			   Class.forName("oracle.jdbc.driver.OracleDriver");
				// 2.得到连接
				// DriverManager.getConnection("连接协议", "用户名", "密码");
				Connection conn = DriverManager.getConnection(
						"jdbc:oracle:thin:@127.0.0.1:1521:ORCL", "Study_user", "123456");

				// 3.得到SQL流
				Statement statement = conn.createStatement();
				
				String sql = "select * from login where id='"+id+"'";// 要执行的sql语句	
				String sql2 = "insert into login(id,pwd,phone,qq,sex,glad) values('"+id+"','"+pwd+"','"+phone+"','"+qq+"','"+sex+"','"+like+"')";// 要执行的sql语句	
				ResultSet exe = statement.executeQuery(sql);
				
				if (!exe.next()) {
					statement.executeUpdate(sql2);
					statement.close();
					conn.close();
				}
				else{
					statement.close();
					conn.close();
					throw new Exception("账号重复!!!");
				}
		
				
	}


}