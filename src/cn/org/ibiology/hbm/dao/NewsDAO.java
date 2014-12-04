package cn.org.ibiology.hbm.dao;

import java.util.List;

import cn.org.ibiology.hbm.model.AbstractModel;

/**
 * 新闻数据处理数据库访问
 * 
 * @author liushaofeng
 * @date 2014-11-15
 */
public class NewsDAO extends AbstractDAO
{

	@Override
	public boolean save(AbstractModel model)
	{
		return super.save(model);
	}

	@Override
	public List<AbstractModel> findAll()
	{
		return null;
	}

	@Override
	public AbstractModel findByID(int id)
	{
		return null;
	}

	@Override
	public AbstractModel update(AbstractModel model)
	{
		return null;
	}
}
