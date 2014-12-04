package cn.org.ibiology.service;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.log4j.Logger;

import cn.org.ibiology.bae.bcs.BCSUtil;

/**
 * Ibiology image manager
 */
public class IbiologyImageService extends HttpServlet
{

	/**
	 * 图片获取处理
	 */
	private static final long serialVersionUID = 7520045151868275811L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
	{
		super.doGet(req, resp);
	}

	/**
	 * 图片上传处理
	 */
	@SuppressWarnings("unchecked")
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse resp) throws ServletException, IOException
	{
		PrintWriter writer = resp.getWriter();

		// Check that we have a file upload request
		if (ServletFileUpload.isMultipartContent(request))
		{
			// Create a factory for disk-based file items
			DiskFileItemFactory factory = new DiskFileItemFactory();

			// Create a new file upload handler
			ServletFileUpload upload = new ServletFileUpload(factory);
			upload.setSizeMax(1024 * 1024 * 10);// 10MB

			// Parse the request
			List<FileItem> items = null;
			try
			{
				items = upload.parseRequest(request);
			}
			catch (FileUploadException e)
			{
				Logger.getLogger(this.getClass()).error(e.getMessage(), e);
				writer.write("请求消息解析出错！");
			}

			List<File> resultFileList = new ArrayList<File>();
			for (FileItem fileItem : items)
			{
				if (!fileItem.isFormField())
				{
					try
					{
						String realPath = this.getServletConfig().getServletContext().getRealPath("/");
						File paramFile = new File(realPath + fileItem.getName());
						fileItem.write(paramFile);
						resultFileList.add(paramFile);
					}
					catch (Exception e)
					{
						Logger.getLogger(this.getClass()).error(e.getMessage(), e);
					}
				}
			}
			writer.write(saveToBCS(resultFileList));
		}
		else
		{
			writer.write("不是文件上传数据，请检查上传源！");
		}
	}

	// 上传图片
	// 返回地址到前台界面
	private String saveToBCS(List<File> resultFileList)
	{
		if (resultFileList.size() == 1)
		{
			return BCSUtil.upload(resultFileList.get(0), true);
		}
		else
		{
			return null;
		}
	}
}
