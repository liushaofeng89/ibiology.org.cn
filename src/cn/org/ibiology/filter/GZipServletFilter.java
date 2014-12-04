package cn.org.ibiology.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * code from http://tutorials.jenkov.com/java-servlets/gzip-servlet-filter.html
 * 
 * @author liushaofeng
 * @date 2014-11-15
 */
public class GZipServletFilter implements Filter
{

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException,
			ServletException
	{

		HttpServletRequest httpRequest = (HttpServletRequest) request;
		HttpServletResponse httpResponse = (HttpServletResponse) response;

		if (acceptsGZipEncoding(httpRequest))
		{
			httpResponse.addHeader("Content-Encoding", "gzip");
			GZipServletResponseWrapper gzipResponse = new GZipServletResponseWrapper(httpResponse);
			chain.doFilter(request, gzipResponse);
			gzipResponse.close();
		}
		else
		{
			chain.doFilter(request, response);
		}
	}

	private boolean acceptsGZipEncoding(HttpServletRequest httpRequest)
	{
		String acceptEncoding = httpRequest.getHeader("Accept-Encoding");
		return acceptEncoding != null && acceptEncoding.indexOf("gzip") != -1;
	}

	public void destroy()
	{
		// TODO Auto-generated method stub

	}

	public void init(FilterConfig filterConfig) throws ServletException
	{
		// TODO Auto-generated method stub

	}
}