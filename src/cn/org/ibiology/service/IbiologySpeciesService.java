package cn.org.ibiology.service;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.org.ibiology.util.HtmlFileChecker;
import cn.org.ibiology.util.IbiologyIntValidator;

/**
 * 物种信息处理器
 * 
 * @author liushaofeng
 * @date 2014-12-28
 */
public class IbiologySpeciesService extends HttpServlet
{
	public static final int UNKNOWN = -1;
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public IbiologySpeciesService()
	{
		super();
	}

	/**
	 * 物种数据获取处理
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String uri = request.getRequestURI().toString();
		String idAddress = uri.substring(uri.indexOf("species/") + 8);
		if (idAddress.isEmpty())// 请求物种目录
		{
			showSpeciesList();
		}
		else
		// 请求某一物种
		{
			int speciesId = resovleAddress(idAddress);
			if (speciesId != UNKNOWN)
			{
				// 检查生成数据文件
				File staticFile = HtmlFileChecker.check(getServletContext().getResource("/").getPath(),
						HtmlFileChecker.FILE_TYPE_SPECIES, speciesId);
				response.setContentType("text/html;charset=UTF-8");
				PrintWriter out = response.getWriter();
				BufferedReader bufferedReader = new BufferedReader(new FileReader(staticFile));
				String line = null;
				while ((line = bufferedReader.readLine()) != null)
				{
					out.write(line);
				}
				bufferedReader.close();
			}
			else
			{
				response.sendRedirect("../error.jsp");
			}
		}
	}

	/**
	 * 解析ID成功则返回ID，否则返回-1（会跳转到错误页面）
	 * 
	 * @param idAddress 待解析的ID数据
	 * @return 解析后的ID
	 */
	private int resovleAddress(String idAddress)
	{
		String idStr = idAddress;
		if (idAddress.endsWith(".html"))
		{
			idStr = idAddress.substring(0, idAddress.lastIndexOf(".html"));
		}
		Integer id = new IbiologyIntValidator().isInt(idStr);
		if (id != null)
		{
			return id;
		}
		return UNKNOWN;
	}

	private void showSpeciesList()
	{

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
