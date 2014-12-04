package cn.org.ibiology.util;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import org.apache.log4j.Logger;

/**
 * 时间操作类
 * @author liushaofeng
 * @date 2014-11-23
 */
public final class DateUtil
{
	private static SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

	/**
	 * 获取默认格式的当前时间字符串（格式：yyyy-MM-dd HH:mm:ss）
	 * @return 默认格式的当前时间字符串
	 */
	public static String getCurrentTime()
	{
		return sdf.format(Calendar.getInstance().getTime());
	}

	/**
	 * 获取指定格式的当前时间字符串
	 * @param pattern 时间格式，例如：yyyy-MM-dd HH:mm:ss
	 * @return 指定格式的当前时间字符串
	 */
	public static String getCurrentTime(String pattern)
	{
		SimpleDateFormat timeFormater = new SimpleDateFormat(pattern);
		return timeFormater.format(Calendar.getInstance().getTime());
	}

	
	/**
	 * 解析指定字符串为Date对象
	 * @param time 时间字符串
	 * @param pattern 时间格式
	 * @return 解析后的日期对象
	 */
	public static Date strToDate(String time,String pattern)
	{
		SimpleDateFormat timeFormater = new SimpleDateFormat(pattern);
		try
		{
			return timeFormater.parse(time);
		}
		catch (ParseException e)
		{
			Logger.getLogger(DateUtil.class).error(e.getMessage(),e);
			return null;
		}
	}

	/**
	 * 将日期对象转换成指定的字符串格式
	 * @param date 需要转换的日期对象
	 * @param pattern 待指定的日期格式
	 * @return 指定的日期字符串格式
	 */
	public static String dateToStr(Date date, String pattern)
	{
		SimpleDateFormat timeFormater = new SimpleDateFormat(pattern);
		return timeFormater.format(date);
	}

	/**
	 * 将日期转换成默认的字符串格式
	 * @param date 日期对象
	 * @return 默认的日期字符串格式
	 */
	public static String dateToStr(Date date)
	{
		return sdf.format(date);
	}
}
