package cn.org.ibiology.util;

import javax.servlet.http.HttpServletRequest;

/**
 * 客户端信息获取工具
 * 
 * @author liushaofeng
 * @date 2014-11-11
 */
public class ClientInfoUtil
{
	/**
	 * 获取客户端请求的IP地址
	 * 
	 * @param request 客户端请求
	 * @return 客户端IP地址
	 */
	public String getIP(HttpServletRequest request)
	{
		String ip = request.getHeader("x-forwarded-for");
		if (ip == null || ip.length() == 0 || ip.equalsIgnoreCase("unknown"))
		{
			ip = request.getHeader("Proxy-Client-IP");
		}
		if (ip == null || ip.length() == 0 || ip.equalsIgnoreCase("unknown"))
		{
			ip = request.getHeader("WL-Proxy-Client-IP");
		}
		if (ip == null || ip.length() == 0 || ip.equalsIgnoreCase("unknown"))
		{
			ip = request.getRemoteAddr();
		}
		if (ip.contains(","))
		{
			ip = ip.substring(0, ip.indexOf(","));
		}
		return ip;
	}
}
