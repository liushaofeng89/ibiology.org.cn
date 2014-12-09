package cn.org.ibiology.service;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import cn.org.ibiology.hbm.dao.LinksDAO;
import cn.org.ibiology.hbm.model.AbstractModel;
import cn.org.ibiology.hbm.model.LinksModel;
import cn.org.ibiology.util.DateUtil;

/**
 * 友情链接服务类
 * 
 * @author liushaofeng
 * @date 2014-12-9
 */
public class IbiologyLinksService extends HttpServlet
{
	private static final long serialVersionUID = 1L;
	private LinksDAO dao = null;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public IbiologyLinksService()
	{
		super();
		this.dao = new LinksDAO();
	}

	/**
	 * 友情链接查询接口
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		List<AbstractModel> findAll = dao.findAll();
		Gson gson = new Gson();
		response.getWriter().write(gson.toJson(findAll));
	}

	/**
	 * 友情链接添加接口
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException,
			IOException
	{
		PrintWriter writer = response.getWriter();
		String siteName = request.getParameter("siteName");
		String siteAddress = request.getParameter("siteAddress");
		String effectiveTime = request.getParameter("effectiveTime");
		if (siteName.trim().isEmpty())
		{
			writer.write("网站名称不能为空！");
			return;
		}
		if (siteAddress.trim().isEmpty())
		{
			writer.write("网站地址不能为空！");
			return;
		}
		if (effectiveTime.trim().isEmpty())
		{
			writer.write("网站有效时间不能为空！");
			return;
		}
		if (saveToDB(siteName, siteAddress, effectiveTime))
		{
			writer.write("SUCCESS");
		}
		else
		{
			writer.write("保存数据失败！");
		}
	}

	private boolean saveToDB(String siteName, String siteAddress, String effectiveTime)
	{
		Date date = DateUtil.strToDate(effectiveTime);
		return dao.save(new LinksModel(siteName, siteAddress, date));
	}

}
