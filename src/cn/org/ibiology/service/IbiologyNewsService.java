package cn.org.ibiology.service;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.org.ibiology.IConstantKey;
import cn.org.ibiology.hbm.dao.NewsDAO;
import cn.org.ibiology.hbm.model.NewsModel;

/**
 * 新闻信息处理类
 * 
 * @author liushaofeng
 * @date 2014-12-20
 */
public class IbiologyNewsService extends HttpServlet
{
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public IbiologyNewsService()
	{
		super();
	}

	/**
	 * 获取新闻信息
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String requestURI = request.getRequestURI();
		String idFileName = requestURI.substring(requestURI.indexOf("news/") + IConstantKey.INT_5);
		System.out.println(idFileName);
	}

	/**
	 * 保存新闻信息
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException,
			IOException
	{
		PrintWriter out = response.getWriter();

		String title = request.getParameter("title");
		String writer = request.getParameter("writer");
		String newsFrom = request.getParameter("newsFrom");
		String newsContent = request.getParameter("newsContent");

		if (title == null || writer == null || newsFrom == null || newsContent == null)
		{
			out.write("数据填写不完整！");
			return;
		}

		if (newsContent.length() > 5000)
		{
			out.write("文章内容超过5000个字符！");
			return;
		}

		// 保存数据到数据库
		String currentUser = (String) request.getSession().getAttribute(IConstantKey.USER_RIGHT_NAME);
		boolean save = new NewsDAO().save(new NewsModel(title, newsContent, newsFrom, writer, currentUser));
		out.write(save ? "SUCCESS" : "数据保存失败！");

	}

}
