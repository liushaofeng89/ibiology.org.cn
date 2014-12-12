package cn.org.ibiology.service;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.org.ibiology.hbm.dao.UserFeedbackDAO;
import cn.org.ibiology.hbm.model.UserFeedbackModel;

/**
 * 用户反馈消息服务类
 * @author liushaofeng
 * @date 2014-12-4
 */
public class IbiologyUserFeedbackService extends HttpServlet
{
	private static final long serialVersionUID = 1L;
	private UserFeedbackDAO dao=null;

	/**
	 * constructor
	 */
	public IbiologyUserFeedbackService()
	{
		super();
		this.dao = new UserFeedbackDAO();
	}

	/**
	 * 用户反馈意见展示处理
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		// TODO Auto-generated method stub
	}

	/**
	 * 用户反馈意见采集处理
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException,
			IOException
	{
		PrintWriter writer = response.getWriter();

		String qq = request.getParameter("qq");
		String email = request.getParameter("email");
		String content = request.getParameter("content");
		String checkResult = checkInput(content);
		if (checkResult == null)
		{
			writer.write(String.valueOf(dao.save(new UserFeedbackModel(qq, email, content))));
		}
		else
		{
			writer.write(checkResult);
		}
	}

	/**
	 * 检查输入是否合法
	 * @param content 用户反馈内容校验
	 * @return 是否合法
	 */
	private String checkInput(String content)
	{
		if (content.trim().length() == 0)
		{
			return "输入的内容不能为空！";
		}
		return null;
	}
}
