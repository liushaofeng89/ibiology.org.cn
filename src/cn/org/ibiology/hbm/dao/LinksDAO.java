package cn.org.ibiology.hbm.dao;

import java.util.Calendar;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;

import cn.org.ibiology.hbm.model.AbstractModel;

/**
 * 友情链接数据库访问
 * 
 * @author liushaofeng
 * @date 2014-12-9
 */
public class LinksDAO extends AbstractDAO
{

	@Override
	public boolean save(AbstractModel model)
	{
		return super.save(model);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<AbstractModel> findAll()
	{
		Session session = getSession();
		String hql = "from LinksModel as model order by model.effectiveTime >=" + Calendar.getInstance().getTime().getTime();
		Query createQuery = session.createQuery(hql);
		List<AbstractModel> list = (List<AbstractModel>) createQuery.list();
		session.close();
		return list;

	}

	@Override
	AbstractModel findByID(int id)
	{
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	AbstractModel update(AbstractModel model)
	{
		// TODO Auto-generated method stub
		return null;
	}

}
