package eg;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 * 数据库连接类
 */
public class DBConnecttion {
	Connection conn=null;
	/**
	 * 获得数据库连接
	 * @throws ClassNotFoundException
	 * @throws SQLException
	 */
	public Connection getConnection() throws ClassNotFoundException, SQLException{
		//加载驱动
		Class.forName("com.mysql.jdbc.Driver");
		// DriverManager.getConnection("连接协议", "用户名", "密码");并把传输代码设置为UTF-8;
        conn = DriverManager.getConnection(
				"jdbc:mysql://localhost/Mycode?characterEncoding=UTF-8", "root", "123456");
		return conn;
	}
	/**
	 * 关闭连接
	 * @throws SQLException
	 */
	public void closeConnection() throws SQLException{
		if (conn!=null){
			conn.close();
		}
	}
}
