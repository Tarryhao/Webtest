package eg;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

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


	public  void get(String id) throws Exception {
			   
			   Class.forName("oracle.jdbc.driver.OracleDriver");
				// 2.得到连接
				// DriverManager.getConnection("连接协议", "用户名", "密码");
				Connection conn = DriverManager.getConnection(
						"jdbc:oracle:thin:@127.0.0.1:1521:ORCL", "Study_user", "123456");

				// 3.得到SQL流
				Statement statement = conn.createStatement();
				
				String sql = "select * from login where id='"+id+"'";// 要执行的sql语句	
				ResultSet exe = statement.executeQuery(sql);
				
				if (exe.next()) {
					String pwd=exe.getString("pwd");
					String phone=exe.getString("phone");
					String qq=exe.getString("qq");
					String sex=exe.getString("sex");
					String like=exe.getString("glad");
					System.out.println(like);
					this.setLogname(id);
				    this.setPassword(pwd);
				    this.setPhone(phone);
				    this.setQQ(qq);
				    this.setSex(sex);
				    this.setLike(like);
				 
					//关闭连接
					statement.close();
					conn.close();
					
					
					}
				}
	
}
