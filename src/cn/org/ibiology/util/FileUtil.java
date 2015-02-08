package cn.org.ibiology.util;

import java.io.File;

/**
 * 文件工具类
 * @author liushaofeng
 * @date 2015-2-2
 */
public final class FileUtil
{
	/**
	 * 判断是否为windows操作系统
	 * @return 是否是windows 操作系统
	 */
	public static boolean isWindows()
	{
		return System.getProperties().getProperty("os.name").toLowerCase().contains("windows");
	}

	/**
	 * 获取文件的扩展名
	 * @param path 文件路径
	 * @return 文件的扩展名
	 */
	public static String getExetension(String path)
	{
		return path.substring(path.lastIndexOf("."));
	}

	/**
	 * 获取文件的扩展名
	 * @param file 文件
	 * @return 文件的扩展名
	 */
	public static String getExetension(File file)
	{
		String name = file.getName();
		return name.substring(name.lastIndexOf("."));
	}
}
