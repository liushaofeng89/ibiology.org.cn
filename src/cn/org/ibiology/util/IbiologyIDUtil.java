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
	 * compile a String ID to show ID
	 * 
	 * @param ID the species ID in DB
	 * @return string view ID
	 */
	public static final String compile(String idStr)
	{
		int parseInt = Integer.parseInt(idStr);
		return String.valueOf(parseInt + CONVERT_VALUE);
	}

	/**
	 * compile a Integer ID to show ID
	 * 
	 * @param ID the species ID in DB
	 * @return string view ID
	 */
	public static final int compile(int id)
	{
		return id + CONVERT_VALUE;
	}

	/**
	 * decompilation a String ID to species ID in DB
	 * 
	 * @param id the view ID
	 * @return the species ID in DB
	 */
	public static final int decompilation(String id)
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

	/**
	 * decompilation a Integer ID to species ID in DB
	 * 
	 * @param id the view ID
	 * @return the species ID in DB
	 */
	public static final int decompilation(int id)
	{
		return id - CONVERT_VALUE;
	}

}
