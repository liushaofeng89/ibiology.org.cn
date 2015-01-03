package cn.org.ibiology.util;

import java.io.File;
import java.io.IOException;

import org.jboss.logging.Logger;

/**
 * HTML file 检查类
 * 
 * @author liushaofeng
 * @date 2015-1-1
 */
public final class HtmlFileChecker
{
	public static final String FILE_TYPE_SPECIES = "species";
	public static final String FILE_TYPE_NEWS = "news";
	public static final String FILE_TYPE_ARTICLE = "article";

	/**
	 * 判断文件是否存在
	 * 
	 * @param containerPath 工程路径
	 * @param fileType 文件类型
	 * @param id 文件ID号
	 * @return 是否存在
	 */
	public static boolean check(String containerPath, String fileType, int id)
	{
		File staticFile = new File(containerPath + fileType + File.separator + id + ".html");
		if (!staticFile.exists())
		{
			try
			{
				File folder = new File(containerPath + fileType);
				if (!folder.exists())
				{
					folder.mkdirs();
				}
				return staticFile.createNewFile();
			}
			catch (IOException e)
			{
				Logger.getLogger(HtmlFileChecker.class).error(e.getMessage(), e);
				return false;
			}
		}
		return true;
	}
}
