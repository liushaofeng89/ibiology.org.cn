package cn.org.ibiology.hbm.model;

import java.util.Calendar;
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
	private Date createDate;
	private Date effectiveTime;

	/**
	 * default constructor for hibernate
	 */
	public LinksModel()
	{
		
	}
	
	/**
	 * constructor
	 * 
	 * @param siteName Site Name
	 * @param siteAddress Site Address
	 * @param effectiveTime Effective Time
	 */
	public LinksModel(String siteName, String siteAddress, Date effectiveTime)
	{
		this.siteName = siteName;
		this.siteDomain = siteAddress;
		this.createDate = Calendar.getInstance().getTime();
		this.effectiveTime = effectiveTime;
	}

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

	public Date getCreateDate()
	{
		return createDate;
	}

	public void setCreateDate(Date createDate)
	{
		this.createDate = createDate;
	}

	public Date getEffectiveTime()
	{
		return effectiveTime;
	}

	public void setEffectiveTime(Date effectiveTime)
	{
		this.effectiveTime = effectiveTime;
	}

}
