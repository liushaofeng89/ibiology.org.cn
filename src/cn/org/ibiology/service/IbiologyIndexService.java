package cn.org.ibiology.service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.org.ibiology.hbm.model.IbiologyIndexModel;

/**
 * 网站首页数据处理服务类
 * @author liushaofeng
 * @date 2014-12-12
 */
public class IbiologyIndexService extends HttpServlet
{
	public static final String INDEX_DATA_KEY = "INDEX_DATA_KEY";
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public IbiologyIndexService()
	{
		super();
	}

	/**
	 * 初始化首页数据，跳转页面
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		IbiologyIndexModel indexModel = IbiologyIndexModel.getInstance();
		getServletContext().setAttribute(INDEX_DATA_KEY, indexModel);
		request.getRequestDispatcher("index.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException,
			IOException
	{
	}

}
