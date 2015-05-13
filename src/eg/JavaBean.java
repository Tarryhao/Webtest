package eg;

public class JavaBean {
	public int login(String id,String pwd) throws Exception {
		//从注册的user中提取账号信息
		RegistUser ru = new RegistUser();
		String logname = ru.getLogname();
		String password = ru.getPassword();
		// System.out.println(id+"1"+pwd);
		if (id.equals(logname) && pwd.equals(password)) {
			return 1;
		} else if (!pwd.equals(password)) {
			if (id.equals(logname)) {
				return 2;
			} else return 0;
		} else return 0;
	}

}
