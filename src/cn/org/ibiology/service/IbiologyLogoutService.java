package cn.org.ibiology.service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.org.ibiology.IConstantKey;

/**
 * 用户注销程序
 * 
 * @author liushaofeng
 * @date 2014-11-24
 */
public class IbiologyLogoutService extends HttpServlet
{

	/**
	 * 
	 */
	private static final long serialVersionUID = -4657034167979135608L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
	{
		doPost(req, resp);
	}

	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
	{
		req.getSession().setAttribute(IConstantKey.USER_RIGHT_NAME, null);
		req.getSession().invalidate();
		resp.sendRedirect(req.getContextPath());
	}

}
