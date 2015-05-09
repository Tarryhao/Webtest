package eg;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
/**
 * 用户登陆的数据库操作类
 * @author asus
 *
 */
public class WebLoginDAO {
		public  int checkid(String id,String pwd) throws Exception {
				//获得数据库连接
				DBConnecttion dbc=new DBConnecttion();
				Connection conn = dbc.getConnection();
				//得到SQL流
				Statement statement = conn.createStatement();
				
				// 要执行的sql语句
				String sql = "select * from login where id='"+id+"'";	
				ResultSet exe = statement.executeQuery(sql);
				if (exe.next()) {
					String passward=exe.getString("pwd");
					//关闭连接
					statement.close();
					conn.close();
					if(pwd.equals(passward)){
						//密码正确返回1
						return 1;
					}
					else{
						statement.close();
						//关闭数据库连接
						conn.close();
						dbc.closeConnection();
						//密码出错返回2
						return 2;
				
					}
				}
				else{
					statement.close();
					//关闭数据库连接
					conn.close();
					dbc.closeConnection();
					//账号不存在返回3
					return 3;
				}
		
				
	}


}
