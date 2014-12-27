package cn.org.ibiology.hbm.model;

import java.util.Date;

/**
 * 物种数据模型
 * @author liushaofeng
 * @date 2014-12-28
 */
public class IbiologySpeciesModel
{
	private int id;// ID
	private String speciesName;// 物种 名称
	private String speciesAliases;// 物种别名
	private String speciesLatinName;// 物种拉丁名
	private String speciesKingdom;// 界
	private String speciesPhylum;// 门
	private String speciesClass;// 科
	private String speciesOrder;// 目
	private String speciesFamily;// 纲
	private String speciesGenus;// 属
	private String speciesSpecies;// 种
	private Date speciesUpdateTime;// 数据最后更新时间
	private int speciesVisited;// 物种访问量
	private String speciesImage;// 物种图片

	public int getId()
	{
		return id;
	}

	public void setId(int id)
	{
		this.id = id;
	}

	public String getSpeciesName()
	{
		return speciesName;
	}

	public void setSpeciesName(String speciesName)
	{
		this.speciesName = speciesName;
	}

	public String getSpeciesAliases()
	{
		return speciesAliases;
	}

	public void setSpeciesAliases(String speciesAliases)
	{
		this.speciesAliases = speciesAliases;
	}

	public String getSpeciesLatinName()
	{
		return speciesLatinName;
	}

	public void setSpeciesLatinName(String speciesLatinName)
	{
		this.speciesLatinName = speciesLatinName;
	}

	public String getSpeciesKingdom()
	{
		return speciesKingdom;
	}

	public void setSpeciesKingdom(String speciesKingdom)
	{
		this.speciesKingdom = speciesKingdom;
	}

	public String getSpeciesPhylum()
	{
		return speciesPhylum;
	}

	public void setSpeciesPhylum(String speciesPhylum)
	{
		this.speciesPhylum = speciesPhylum;
	}

	public String getSpeciesClass()
	{
		return speciesClass;
	}

	public void setSpeciesClass(String speciesClass)
	{
		this.speciesClass = speciesClass;
	}

	public String getSpeciesOrder()
	{
		return speciesOrder;
	}

	public void setSpeciesOrder(String speciesOrder)
	{
		this.speciesOrder = speciesOrder;
	}

	public String getSpeciesFamily()
	{
		return speciesFamily;
	}

	public void setSpeciesFamily(String speciesFamily)
	{
		this.speciesFamily = speciesFamily;
	}

	public String getSpeciesGenus()
	{
		return speciesGenus;
	}

	public void setSpeciesGenus(String speciesGenus)
	{
		this.speciesGenus = speciesGenus;
	}

	public String getSpeciesSpecies()
	{
		return speciesSpecies;
	}

	public void setSpeciesSpecies(String speciesSpecies)
	{
		this.speciesSpecies = speciesSpecies;
	}

	public Date getSpeciesUpdateTime()
	{
		return speciesUpdateTime;
	}

	public void setSpeciesUpdateTime(Date speciesUpdateTime)
	{
		this.speciesUpdateTime = speciesUpdateTime;
	}

	public int getSpeciesVisited()
	{
		return speciesVisited;
	}

	public void setSpeciesVisited(int speciesVisited)
	{
		this.speciesVisited = speciesVisited;
	}

	public String getSpeciesImage()
	{
		return speciesImage;
	}

	public void setSpeciesImage(String speciesImage)
	{
		this.speciesImage = speciesImage;
	}

}
