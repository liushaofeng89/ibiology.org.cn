package cn.org.ibiology.hbm.dao;

import java.util.List;

import org.apache.log4j.Logger;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import cn.org.ibiology.hbm.HibernateSessionFactory;

/**
 * 数据库访问对象抽象类
 * 
 * @author liushaofeng
 * @date 2014-11-15
 */
public abstract class IbiologyDAO
{
	public static Session getSession()
	{
		return HibernateSessionFactory.getSession();
	}

	/**
	 * 保存一个对象
	 * 
	 * @param model Object 数据模型
	 * @return 保存是否成功
	 */
	public static boolean save(Object model)
	{
		Session session = getSession();
		Transaction tx = null;
		try
		{
			tx = session.beginTransaction();
			session.save(model);
			tx.commit();
			return true;
		}
		catch (Exception e)
		{
			Logger.getLogger(IbiologyDAO.class).error(e.getMessage(), e);
			tx.rollback();
			return false;
		}
		finally
		{
			session.close();
		}
	}

	/**
	 * 删除一个对象
	 * 
	 * @param model Object 数据模型
	 * @return 删除是否成功
	 */
	public static boolean delete(Object model)
	{
		return false;
	}

	/**
	 * 查询所有
	 * 
	 * @return 所有的数据
	 */
	@SuppressWarnings("unchecked")
	public static List<Object> findAll(String modelName)
	{
		Session session = getSession();
		String hql = "from " + modelName;
		Query createQuery = session.createQuery(hql);
		List<Object> list = createQuery.list();
		session.close();
		return list;

	}

	/**
	 * 通过指定数据模型名，时列名，是否是升序来实现排序查询
	 * 
	 * @return 排序后的数据列表
	 */
	@SuppressWarnings("unchecked")
	public static List<Object> findAllByOrderByTime(String ModelName, String columnName, boolean isAsc)
	{
		Session session = getSession();
		String hql = "from " + ModelName + " as model order by model." + columnName + " " + (isAsc ? "asc" : "desc");
		Query createQuery = session.createQuery(hql);
		List<Object> list = (List<Object>) createQuery.list();
		session.close();
		return list;
	}

	/**
	 * 通过ID查询对象
	 * 
	 * @return 指定ID的数据模型
	 */
	@SuppressWarnings("unchecked")
	public static Object findByID(String ModelName, int id)
	{
		Session session = getSession();
		String hql = "from " + ModelName + " as model where model.id = " + id;
		Query createQuery = session.createQuery(hql);
		List<Object> list = (List<Object>) createQuery.list();
		session.close();
		if (list.size() != 1)
		{
			return null;
		}
		return list.get(0);
	}
}
