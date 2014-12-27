package cn.org.ibiology.hbm.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
/**
 * 物种数据库访问接口
 * @author liushaofeng
 * @date 2014-12-28
 */
public class IbiologySpeciesDAO extends AbstractDAO
{

	@SuppressWarnings("unchecked")
	@Override
	public List<Object> findAll()
	{
		Session session = getSession();
		String hql = "from IbiologySpeciesModel as model order by model.speciesUpdateTime desc";
		Query createQuery = session.createQuery(hql);
		List<Object> list = createQuery.list();
		session.close();
		return list;
	}

	@Override
	protected Object findByID(int id)
	{
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	protected Object update(Object model)
	{
		// TODO Auto-generated method stub
		return null;
	}

}
