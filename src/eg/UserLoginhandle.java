package eg;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLEncoder;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * @author asus
 *用户非自动登录控制器
 */
public class UserLoginhandle extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public UserLoginhandle() {
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

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		out.println("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">");
		out.println("<HTML>");
		out.println("  <HEAD><TITLE>A Servlet</TITLE></HEAD>");
		out.println("  <BODY>");
		out.print("    This is ");
		out.print(this.getClass());
		out.println(", using the GET method");
		out.println("  </BODY>");
		out.println("</HTML>");
		out.flush();
		out.close();
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
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
			 {

		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		HttpSession session=request.getSession();
		String id=request.getParameter("id");
		String pwd=request.getParameter("pwd");
		String rand = (String)session.getAttribute("rand");
		String input = request.getParameter("rand");
		String[] rem=request.getParameterValues("remember");
		System.out.println("记住密码="+rem[0]);
		if (rand.equals(input)) {
			WebLoginDAO t=new WebLoginDAO();
		  	System.out.println(id+"+"+pwd);
			int ss=0;
		 	try {
				ss=t.checkid(id, pwd);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				
				e.printStackTrace();
				throw new ServletException(e);
			}
		  	System.out.println("check="+ss);
			if(ss==1){
				//存入登陆的用户logname
				RegistUser ee=new RegistUser();
				ee.setLogname(id);
				//登陆成功后根据ID取出用户全部信息，以方便用户修改界面预显示信息
				try {
					ee.get(id);
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				session.setAttribute("user", ee);
<<<<<<< HEAD
				session.setAttribute("logname",id);
				
=======
				session.setAttribute("username", id);
>>>>>>> origin/master
				//检查“记住我”是否勾选；
				if(rem[0].equals("remember")){
				//新建cookie对象
		   		Cookie idcookie=new Cookie("id", URLEncoder.encode(id, "UTF-8"));
		   		Cookie pwdcookie=new Cookie("pwd",pwd);
		   		//设置cookie的生命周期
		   		idcookie.setMaxAge(300);
		   		pwdcookie.setMaxAge(300);
		   		//将cookie写入客户端浏览器
		   		response.addCookie(idcookie);
		   		response.addCookie(pwdcookie);
		   		System.out.println("已记住");
				}
				
				request.getRequestDispatcher("index2.jsp").forward(request, response);
			}
			else if(ss==2){
				throw new ServletException("密码错误！");
			}
			else if(ss==3){
				throw new ServletException("账号不存在！");
			}
		}
		else{

				throw new ServletException("验证码错误！");

		
		}
		
		
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
