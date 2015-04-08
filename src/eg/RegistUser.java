package eg;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 * 用户对象类
 * @author asus
 *
 */
public class RegistUser {
	public String logname="";
	public String password="";
	public String phone="";
	public String QQ="";
	public String like="";
	public String sex="";
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getLike() {
		return like;
	}
	public void setLike(String like) {
		this.like = like;
	}
	public String getLogname() {
		return logname;
	}
	public void setLogname(String logname) {
		this.logname = logname;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getQQ() {
		return QQ;
	}
	public void setQQ(String QQ) {
		this.QQ = QQ;
	}


	/**
	 * 提供一个根据用户名得到所有信息的方法
	 * @param id
	 * @throws Exception
	 */
	public  void get(String id) throws Exception {
			   
				//获得数据库连接
				DBConnecttion dbc=new DBConnecttion();
				Connection conn = dbc.getConnection();

				//创建JDBC对象statement
				Statement statement = conn.createStatement();
				
				// 要执行的sql语句	
				String sql = "select * from login where id='"+id+"'";
				ResultSet exe = statement.executeQuery(sql);
				
				if (exe.next()) {
					String pwd=exe.getString("pwd");
					String phone=exe.getString("phone");
					String qq=exe.getString("qq");
					String sex=exe.getString("sex");
					String like=exe.getString("glad");
					this.setLogname(id);
				    this.setPassword(pwd);
				    this.setPhone(phone);
				    this.setQQ(qq);
				    this.setSex(sex);
				    this.setLike(like);
				 
					//关闭连接
					statement.close();
					conn.close();
					dbc.closeConnection();
					
					
					}
				}
	
}
