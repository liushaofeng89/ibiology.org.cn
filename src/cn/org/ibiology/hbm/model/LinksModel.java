package cn.org.ibiology.hbm.model;

import java.util.Date;

/**
 * 友情链接数据模型
 * @author liushaofeng
 * @date 2014-12-8
 */
public class LinksModel
{
	private int id;
	private String siteName;
	private String siteDomain;
	private Date data;
	private long effectiveTime;

	public int getId()
	{
		return id;
	}

	public void setId(int id)
	{
		this.id = id;
	}

	public String getSiteName()
	{
		return siteName;
	}

	public void setSiteName(String siteName)
	{
		this.siteName = siteName;
	}

	public String getSiteDomain()
	{
		return siteDomain;
	}

	public void setSiteDomain(String siteDomain)
	{
		this.siteDomain = siteDomain;
	}

	public Date getData()
	{
		return data;
	}

	public void setData(Date data)
	{
		this.data = data;
	}

	public long getEffectiveTime()
	{
		return effectiveTime;
	}

	public void setEffectiveTime(long effectiveTime)
	{
		this.effectiveTime = effectiveTime;
	}

}
