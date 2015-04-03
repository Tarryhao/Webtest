package eg;

public class Test {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		WebATORegis ato=new WebATORegis();
		try {
			ato.regis("logname", "pwd", "phone", "qq","sex","cboxstr");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
