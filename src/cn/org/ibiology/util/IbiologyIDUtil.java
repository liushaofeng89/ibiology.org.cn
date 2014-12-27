package cn.org.ibiology.util;

import org.apache.log4j.Logger;

/**
 * The convertor for species ID in DB
 * 
 * @author liushaofeng
 * @date 2014-12-28
 */
public final class IbiologyIDUtil
{
	public static final int CONVERT_VALUE = 10000;

	/**
	 * encoding ID to a String
	 * 
	 * @param ID the species ID in DB
	 * @return string view ID
	 */
	public static final String encodingID(int id)
	{
		return String.valueOf(id + CONVERT_VALUE);
	}

	/**
	 * resovle a string to species ID in DB
	 * 
	 * @param id the view ID
	 * @return the species ID in DB
	 */
	public static final int unEncodingID(String id)
	{
		int parseInt;
		try
		{
			parseInt = Integer.parseInt(id);
			return parseInt - CONVERT_VALUE;
		}
		catch (NumberFormatException e)
		{
			Logger.getLogger(IbiologyIDUtil.class).error(e.getMessage(), e);
			return -1;
		}
	}
}
