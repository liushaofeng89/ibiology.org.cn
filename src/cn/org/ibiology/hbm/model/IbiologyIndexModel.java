package cn.org.ibiology.hbm.model;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import cn.org.ibiology.hbm.dao.IbiologySpeciesDAO;
import cn.org.ibiology.hbm.dao.LinksDAO;

/**
 * 网站首页数据展示模型
 * @author liushaofeng
 * @date 2014-12-12
 */
public final class IbiologyIndexModel
{
	// 物种数据模型
	private static List<IbiologySpeciesModel> speciesList = new ArrayList<IbiologySpeciesModel>();
	
	// 友情链接数据模型
	private static Map<String, String> linksMap = new HashMap<String, String>();

	private static IbiologyIndexModel instance = new IbiologyIndexModel();

	/**
	 * private this model,singleton
	 */
	private IbiologyIndexModel()
	{
		initData();
	}

	private void initData()
	{
		List<Object> findAll = new IbiologySpeciesDAO().findAll();
		for (Object object : findAll)
		{
			speciesList.add((IbiologySpeciesModel) object);
		}
		
		findAll = new LinksDAO().findAll();
		for (Object obj : findAll)
		{
			LinksModel model = (LinksModel) obj;
			linksMap.put(model.getSiteName(), model.getSiteDomain());
		}
	}


	public static IbiologyIndexModel getInstance()
	{
		return instance;
	}

	public List<IbiologySpeciesModel> getSpeciesList()
	{
		return speciesList;
	}

	public Map<String, String> getLinksMap()
	{
		return linksMap;
	}
}
