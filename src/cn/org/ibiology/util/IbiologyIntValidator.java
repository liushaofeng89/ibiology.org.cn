package cn.org.ibiology.util;

import org.apache.log4j.Logger;

/**
 * 整数校验器
 * 
 * @author liushaofeng
 * @date 2015-1-1
 */
public final class IbiologyIntValidator
{
	/**
	 * 校验数据是否是整数
	 * @param data 待校验数据
	 * @return 是否是整数
	 */
	public Integer isInt(String data)
	{
		try
		{
			return Integer.parseInt(data);
		}
		catch (NumberFormatException e)
		{
			Logger.getLogger(this.getClass()).error(e.getMessage(), e);
		}
		return null;
	}
}
