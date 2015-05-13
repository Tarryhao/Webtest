package eg;

import java.sql.Connection;
import java.sql.PreparedStatement;
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
			    System.out.println(ru.getLogname()+"账号");
//				String sql2 = "insert into login(id,pwd,phone,qq,sex,glad) values('"+ru.getLogname()+"','"+ru.getPassword()+"','"+ru.getPhone()+"','"+ru.getQQ()+"','"+ru.getSex()+"','"+ru.getLike()+"')";
				ResultSet exe = statement.executeQuery(sql);
				String sql2="insert into login(id,pwd,phone,qq,sex,glad) values(?,?,?,?,?,?)";
				//sql语句预处理
				PreparedStatement ps=conn.prepareStatement(sql2);
				//给？传值
				ps.setString(1, ru.getLogname());
				ps.setString(2, ru.getPassword());
				ps.setString(3, ru.getPhone());
				ps.setString(4, ru.getQQ());
				ps.setString(5, ru.getSex());
				ps.setString(6, ru.getLike());


				
				if (!exe.next()) {
					//statement.executeUpdate(sql2);
					ps.executeUpdate();
					ps.close();
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