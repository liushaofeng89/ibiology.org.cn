package cn.org.ibiology.hbm.model;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import cn.org.ibiology.hbm.dao.LinksDAO;

/**
 * 网站首页数据展示模型
 * @author liushaofeng
 * @date 2014-12-12
 */
public final class IbiologyIndexModel
{
	// 友情链接数据模型
	private Map<String, String> linksMap = null;

	private static IbiologyIndexModel instance = new IbiologyIndexModel();

	/**
	 * private this model,singleton
	 */
	private IbiologyIndexModel()
	{
		this.linksMap = new HashMap<String, String>();

		initData();
	}

	private void initData()
	{
		loadLinksData();
	}

	private void loadLinksData()
	{
		List<Object> findAll = new LinksDAO().findAll();
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

	public Map<String, String> getLinksMap()
	{
		return linksMap;
	}
}
