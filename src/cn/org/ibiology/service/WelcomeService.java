package cn.org.ibiology.service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 网站请求，客户端数据统计
 * 1.访问量统计
 * 2.客户端地址统计
 * 3.是否通过首页来访问
 * 
 * @author liushaofeng
 * @date 2014-11-1
 */
public class WelcomeService extends HttpServlet
{

	/**
	 * 
	 */
	private static final long serialVersionUID = 5063255792608958171L;

	/**
	 * 
	 */
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
	{
		req.getRequestDispatcher("index.jsp").forward(req, resp);
	}

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
	{
		System.out.println("2");
	}

}
