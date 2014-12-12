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
import javax.servlet.http.HttpSession;

import cn.org.ibiology.IConstantKey;

/**
 * Servlet Filter implementation class RightCheck
 */
public class RightCheckFilter implements Filter
{

	/**
	 * Default constructor.
	 */
	public RightCheckFilter()
	{
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see Filter#destroy()
	 */
	public void destroy()
	{
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException,
			ServletException
	{
		HttpServletRequest req = (HttpServletRequest) request;
		if (req.getRequestURL().toString().contains("manage"))
		{
			HttpSession session = req.getSession();
			String attribute = (String) session.getAttribute(IConstantKey.USER_RIGHT_NAME);
			if (session.isNew() || attribute == null)
			{
				HttpServletResponse resp = (HttpServletResponse) response;
				resp.sendRedirect("../login.html");
			}
		}
		chain.doFilter(request, response);
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException
	{
		// TODO Auto-generated method stub
	}

}
