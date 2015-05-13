package eg;

import java.io.IOException;
import java.net.URLDecoder;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * @author asus
 *自动登录的控制器
 */
@SuppressWarnings("serial")
public class UserAutoLoginhandle extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public UserAutoLoginhandle() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		HttpSession session=request.getSession();
		String idcookie="";
	   
		Cookie[] cos=request.getCookies();
		if(cos!=null){
			for(int i=0;i<cos.length;i++){
			System.out.println(i+":"+cos[i].getName());
				if(cos[i].getName().equals("id")){
				idcookie=cos[i].getValue();
				idcookie= URLDecoder.decode(idcookie, "UTF-8");
				}
				
			}
		} 

			//存入登陆的用户logname
			RegistUser ee=new RegistUser();
			ee.setLogname(idcookie);
			//登陆成功后根据ID取出用户全部信息，以方便用户修改界面预显示信息
			try {
				ee.get(idcookie);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			session.setAttribute("user", ee);
			session.setAttribute("logname",idcookie);
			
			request.getRequestDispatcher("index2.jsp").forward(request, response);
	}

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		HttpSession session=request.getSession();
		String idcookie="";
	   
		Cookie[] cos=request.getCookies();
		if(cos!=null){
			for(int i=0;i<cos.length;i++){
			System.out.println(i+":"+cos[i].getName());
				if(cos[i].getName().equals("id")){
				idcookie=cos[i].getValue();
				}
				
			}
		} 

			//存入登陆的用户logname
			RegistUser ee=new RegistUser();
			ee.setLogname(idcookie);
			try {
				ee.get(idcookie);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			session.setAttribute("user", ee);
			
			request.getRequestDispatcher("index2.jsp").forward(request, response);
			
	}

	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
