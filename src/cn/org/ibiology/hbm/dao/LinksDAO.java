package cn.org.ibiology.hbm.dao;

import java.util.Calendar;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;

/**
 * 友情链接数据库访问
 * @author liushaofeng
 * @date 2014-12-9
 */
public class LinksDAO extends AbstractDAO
{

	@Override
	public boolean save(Object model)
	{
		return super.save(model);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Object> findAll()
	{
		Session session = getSession();
		String hql = "from LinksModel as model where model.effectiveTime >=?";
		Query createQuery = session.createQuery(hql);
		createQuery.setParameter(0, Calendar.getInstance().getTime());
		List<Object> list = createQuery.list();
		session.close();
		return list;
	}

	@Override
	public Object findByID(int id)
	{
		return null;
	}

	@Override
	public Object update(Object model)
	{
		return null;
	}

}
