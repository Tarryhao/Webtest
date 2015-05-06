package eg;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * @author asus
 *
 *用户注册控制器
 */
@SuppressWarnings("serial")
public class UserRegistHandle extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public UserRegistHandle() {
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
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		HttpSession session=request.getSession();
		
		//用于注册储存
		
		//接收对象
		String logname=request.getParameter("logname");
		String pwd=request.getParameter("pwd");
		String phone=request.getParameter("phone");
		String qq=request.getParameter("qq");
		String sex=request.getParameter("sex");
		String[] cbox=request.getParameterValues("like");
		String cboxstr="";
		if(cbox!=null){
		for(int i=0;i<cbox.length;i++){
				cboxstr=cboxstr+cbox[i]+",";
			}
		}
		//存入对象
		RegistUser ru=new RegistUser();
		ru.setLogname(logname);
		ru.setPassword(pwd);
		ru.setPhone(phone);
		ru.setQQ(qq);
		ru.setLike(cboxstr);
		if(sex!=null){
		ru.setSex(sex);}
		//将对象暂存到session中
		session.setAttribute("user", ru);
		//存入数据库中
		WebRegistDAO ato=new WebRegistDAO();
		//执行数据库操作
		try {
			ato.regis(ru);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		//跳转到主页
		response.sendRedirect("index2.jsp");
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
