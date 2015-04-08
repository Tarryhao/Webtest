package eg;

import java.sql.Connection;
import java.sql.PreparedStatement;
/**
 * 用户修改信息的数据库操作类
 * @author asus
 *
 */
public class WebChangeDAO {

		public  void change(RegistUser ru) throws Exception {
				//获得数据库连接
				DBConnecttion dbc=new DBConnecttion();
				Connection conn = dbc.getConnection();
				//设置sql语句
				String sql="UPDATE login   SET pwd =?,phone=?,qq=?,sex=?,glad=? WHERE id=?";
				//sql语句预处理
				PreparedStatement ps=conn.prepareStatement(sql);
				//给？传值
				ps.setString(1, ru.getPassword());
				ps.setString(2, ru.getPhone());
				ps.setString(3, ru.getQQ());
				ps.setString(4, ru.getSex());
				ps.setString(5, ru.getLike());
				ps.setString(6, ru.getLogname());
				int number=ps.executeUpdate();
				System.out.println("数据库"+number+"行受影响！");
				ps.close();
				conn.close();
				dbc.closeConnection();
				
				}
				
	}



