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
	 * @return
	 * @throws ClassNotFoundException
	 * @throws SQLException
	 */
	public Connection getConnection() throws ClassNotFoundException, SQLException{
		//加载驱动
		Class.forName("oracle.jdbc.driver.OracleDriver");
		// DriverManager.getConnection("连接协议", "用户名", "密码");
		Connection conn = DriverManager.getConnection(
				"jdbc:oracle:thin:@127.0.0.1:1521:ORCL", "Study_user", "123456");
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
