package eg;
//该类用于修改用户数据库上的信息
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
public class WebATOchange {

		public  void regis(String id,String pwd,String phone,String qq,String sex,String like) throws Exception {
               	//加载驱动
				Class.forName("oracle.jdbc.driver.OracleDriver");
				// DriverManager.getConnection("连接协议", "用户名", "密码");
				Connection conn2 = DriverManager.getConnection(
						"jdbc:oracle:thin:@127.0.0.1:1521:ORCL", "Study_user", "123456");
				String sql="UPDATE login   SET pwd =?,phone=?,qq=?,sex=?,glad=? WHERE id=?";
				//sql语句预处理
				PreparedStatement ps=conn2.prepareStatement(sql);
				//给？传值
				ps.setString(1, pwd);
				ps.setString(2, phone);
				ps.setString(3, qq);
				ps.setString(4, sex);
				ps.setString(5, like);
				ps.setString(6, id);
				int number=ps.executeUpdate();
				System.out.println("数据库"+number+"行受影响！");
				ps.close();
				conn2.close();
				
				}
				
	}



