package cn.org.ibiology.service;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cn.org.ibiology.IConstantKey;

/**
 * 后台管理登录跳转入口处理
 */
public class IbiologyLoginService extends HttpServlet
{
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public IbiologyLoginService()
	{
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		response.sendRedirect("login.html");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException,
			IOException
	{
		PrintWriter writer = response.getWriter();
		String userName = request.getParameter("name");
		String pwd = request.getParameter("pwd");
		// 验证权限
		if (checkUser(userName, pwd))
		{
			// 设置全局属性
			HttpSession session = request.getSession();
			session.setAttribute(IConstantKey.USER_RIGHT_NAME, userName);
			session.setMaxInactiveInterval(3 * 60);// 3 min
			writer.write("SUCCESS");
		}
		else
		{
			writer.write("用户或密码错误！");
		}
	}

	private boolean checkUser(String userName, String pwd)
	{
		// MD5Util.encodeStr(pwd);
		if ("liushaofeng".equals(userName) && "Huawei@345".equals(pwd))
		{
			return true;
		}
		return false;
	}
}
