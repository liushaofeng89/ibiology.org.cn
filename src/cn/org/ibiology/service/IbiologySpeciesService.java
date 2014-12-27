package cn.org.ibiology.service;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 物种信息处理器
 * 
 * @author liushaofeng
 * @date 2014-12-28
 */
public class IbiologySpeciesService extends HttpServlet
{
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public IbiologySpeciesService()
	{
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * 物种数据获取处理
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String uri = request.getRequestURI().toString();
		String id = uri.substring(uri.indexOf("species/") + 8);
		if (id.isEmpty())// 请求物种目录
		{

		}
		else
		// 请求某一物种
		{
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException,
			IOException
	{
		// TODO Auto-generated method stub
	}

}
