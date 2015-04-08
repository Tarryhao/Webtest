package eg;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
/**
 * 用户注册的数据库操作类
 * @author asus
 *
 */
public class WebRegistDAO {
	

		public  void regis(RegistUser ru) throws Exception {
				//获得数据库连接
			    DBConnecttion dbc=new DBConnecttion();
				Connection conn = dbc.getConnection();
				//创建JDBC对象statement
				Statement statement = conn.createStatement();
				// 要执行的sql语句
				String sql = "select * from login where id='"+ru.getLogname()+"'";	
				String sql2 = "insert into login(id,pwd,phone,qq,sex,glad) values('"+ru.getLogname()+"','"+ru.getPassword()+"','"+ru.getPhone()+"','"+ru.getQQ()+"','"+ru.getSex()+"','"+ru.getLike()+"')";	
				ResultSet exe = statement.executeQuery(sql);
				
				if (!exe.next()) {
					statement.executeUpdate(sql2);
					statement.close();
					conn.close();
					dbc.closeConnection();
				}
				else{
					statement.close();
					dbc.closeConnection();
					conn.close();
					throw new Exception("账号重复!!!");
				}
		
				
	}


}