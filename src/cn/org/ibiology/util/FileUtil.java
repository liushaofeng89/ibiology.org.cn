package cn.org.ibiology.util;

import java.io.File;

public class FileUtil
{
	/**
	 * 获取文件的扩展名
	 * 
	 * @param path 文件路径
	 * @return 文件的扩展名
	 */
	public static String getExetension(String path)
	{
		return path.substring(path.lastIndexOf("."));
	}

	/**
	 * 获取文件的扩展名
	 * 
	 * @param file 文件
	 * @return 文件的扩展名
	 */
	public static String getExetension(File file)
	{
		String name = file.getName();
		return name.substring(name.lastIndexOf("."));
	}
}
