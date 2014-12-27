package cn.org.ibiology.util;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpServletResponseWrapper;

import org.apache.log4j.Logger;

/**
 * jsp html转换工具类（http://www.java3z.com/cwbwebhome/article/article5/51373.html?id=4591）
 * @author liushaofeng
 * @date 2014-12-18
 */
public class JspToHtmlUtil extends HttpServlet
{
	/**
	 * 
	 */
	private static final long serialVersionUID = -2045118867483758529L;
	private Logger logger = Logger.getLogger(JspToHtmlUtil.class);

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		doPost(request, response);
	}

	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String encoding = "UTF-8";
		// 获得请求address
		String templatePath = URLReWrite(request);
		// 获得相对路径
		String realPath = request.getSession().getServletContext().getRealPath("/");
		// 获得要生成的静态html文件的名字
		String htmlName = getHtmlFileName(request);
		// 获得详细路径的 html文件的名字
		String cachhtmlFileName = realPath + File.separator + htmlName;
		File cacheFile = new File(cachhtmlFileName);
		boolean load = true;

		// 文件存在的话就可以直接返回了，不需要做任何处理
		if (cacheFile.exists())
		{
			load = false;
		}
		if (load)
		{
			final ByteArrayOutputStream os = new ByteArrayOutputStream();
			final ServletOutputStream stream = new ServletOutputStream()
			{
				public void write(byte[] data, int offset, int length)
				{
					os.write(data, offset, length);
				}

				public void write(int b) throws IOException
				{
					os.write(b);
				}
			};
			final PrintWriter pw = new PrintWriter(new OutputStreamWriter(os, encoding));
			HttpServletResponse rep = new HttpServletResponseWrapper(response)
			{
				public ServletOutputStream getOutputStream()
				{
					return stream;
				}

				public PrintWriter getWriter()
				{
					return pw;
				}
			};
			logger.debug("HtmlCreatorServlet RequestDispatcher = " + templatePath);

			// 使用 RequestDispatcher转发请求，请求真是的地址
			// 例如 index.shtm ，则转发到 index.do
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(templatePath);
			dispatcher.include(request, rep);
			pw.flush();
			FileOutputStream fos = null;
			try
			{
				if (os.size() == 0)
				{
					// 验证一下用户转发的地址是否有效，无效的话就提示错误
					response.sendError(HttpServletResponse.SC_NOT_FOUND, "");
				}
				else
				{
					// servlet调用其他命令在相应的目录生成html文件，并且把文件返回给客户端
					fos = new FileOutputStream(cachhtmlFileName);
					os.writeTo(fos);
					dispatcher = getServletContext().getRequestDispatcher("/" + htmlName);
					dispatcher.include(request, response);
				}
			}
			finally
			{
				if (fos != null)
				{
					fos.close();
				}
			}

		}
		else
		{
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/" + htmlName);
			dispatcher.include(request, response);
		}
	}

	// 主要的功能就是把http://abc.com/xx_pageNumber_1.shtm
	// 转换成 http://abc.com/xx.do?pageNumber=1 形式
	protected String URLReWrite(HttpServletRequest request) throws ServletException, IOException
	{
		String uri = request.getRequestURI();
		String contextPath = request.getContextPath();
		logger.debug("HtmlCreator contextPath = " + contextPath);
		if (contextPath != null && contextPath.length() > 0)
			uri = uri.substring(contextPath.length());
		uri = uri.substring(0, uri.length() - 5);
		String[] urls = uri.split("_");
		uri = urls[0] + ".do";
		if (urls.length > 1)
		{
			for (int i = 1; i < urls.length; i += 2)
			{
				if (i == 1)
				{
					uri += "?" + urls[i] + "=" + urls[i + 1];
				}
				else
				{
					uri += "&" + urls[i] + "=" + urls[i + 1];
				}
			}
		}
		logger.debug("HtmlCreatorServlet get uri = " + uri);
		return uri;
	}

	// 主要功能根据 http://abc.com/xx_pageNumber_1.shtm
	// 来得到即将要生成的html文件名字，也就是 xx_pageNumber_1.html
	private String getHtmlFileName(HttpServletRequest request) throws ServletException, IOException
	{
		String uri = request.getRequestURI();
		String contextPath = request.getContextPath();
		if (contextPath != null && contextPath.length() > 0)
			uri = uri.substring(contextPath.length());
		uri = uri.substring(1, uri.length() - 5);
		uri += ".html";
		return uri;
	}
}
