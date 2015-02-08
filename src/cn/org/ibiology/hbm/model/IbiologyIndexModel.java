package cn.org.ibiology.hbm.model;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import cn.org.ibiology.hbm.dao.IbiologyDAO;

/**
 * 网站首页数据展示模型
 * 
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
		List<Object> findAll = IbiologyDAO.findAllByOrderByTime("IbiologySpeciesModel", "speciesUpdateTime", false);
		for (Object object : findAll)
		{
			speciesList.add((IbiologySpeciesModel) object);
		}

		findAll = IbiologyDAO.findAllByOrderByTime("LinksModel", "createDate", false);
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
