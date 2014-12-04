package cn.org.ibiology.hbm.model;

import java.util.Calendar;
import java.util.Date;

/**
 * 新闻通知数据模型
 * 
 * @author liushaofeng
 * @date 2014-11-15
 */
public class NewsModel extends AbstractModel
{
	private int id;
	private String newsTitle;
	private String newsContent;
	private String newsFrom;
	private String newsWriter;
	private String newsChecker;
	private Date newsTime;
	private int newsVisited = 0;

	public NewsModel(String title, String content, String from, String writer, String checker)
	{
		this.newsTitle = title;
		this.newsContent = content;
		this.newsFrom = from;
		this.newsWriter = writer;

		this.newsChecker = checker;
		this.newsTime = Calendar.getInstance().getTime();
	}

	public int getId()
	{
		return id;
	}

	public void setId(int id)
	{
		this.id = id;
	}

	public String getNewsTitle()
	{
		return newsTitle;
	}

	public void setNewsTitle(String newsTitle)
	{
		this.newsTitle = newsTitle;
	}

	public String getNewsContent()
	{
		return newsContent;
	}

	public void setNewsContent(String newsContent)
	{
		this.newsContent = newsContent;
	}

	public String getNewsFrom()
	{
		return newsFrom;
	}

	public void setNewsFrom(String newsFrom)
	{
		this.newsFrom = newsFrom;
	}

	public String getNewsWriter()
	{
		return newsWriter;
	}

	public void setNewsWriter(String newsWriter)
	{
		this.newsWriter = newsWriter;
	}

	public String getNewsChecker()
	{
		return newsChecker;
	}

	public void setNewsChecker(String newsChecker)
	{
		this.newsChecker = newsChecker;
	}

	public Date getNewsTime()
	{
		return newsTime;
	}

	public void setNewsTime(Date newsTime)
	{
		this.newsTime = newsTime;
	}

	public int getNewsVisited()
	{
		return newsVisited;
	}

	public void setNewsVisited(int newsVisited)
	{
		this.newsVisited = newsVisited;
	}

}
