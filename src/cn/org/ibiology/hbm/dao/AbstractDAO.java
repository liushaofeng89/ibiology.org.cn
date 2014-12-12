package cn.org.ibiology.hbm.dao;

import java.util.List;

import org.apache.log4j.Logger;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import cn.org.ibiology.hbm.HibernateSessionFactory;

/**
 * 数据库访问对象抽象类
 * @author liushaofeng
 * @date 2014-11-15
 */
public abstract class AbstractDAO
{
	public Session getSession()
	{
		return HibernateSessionFactory.getSession();
	}

	/**
	 * 保存一个对象
	 * @param model Object 数据模型
	 * @return 保存是否成功
	 */
	protected boolean save(Object model)
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
			Logger.getLogger(this.getClass()).error(e.getMessage(), e);
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
	 * @param model Object 数据模型
	 * @return 删除是否成功
	 */
	protected boolean delete(Object model)
	{
		return false;
	}

	/**
	 *更新数据
	 * @return 更新数据
	 */
	protected abstract Object update(Object model);

	/**
	 * 查询所有
	 * @return
	 */
	protected abstract List<Object> findAll();

	/**
	 * 通过指定数据模型名，时列名，是否是升序来实现排序查询
	 * @return 排序后的数据列表
	 */
	@SuppressWarnings("unchecked")
	protected List<Object> findAllByOrderByTime(String ModelName, String columnName, boolean isAsc)
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
	 * @return 指定ID的数据模型
	 */
	protected abstract Object findByID(int id);

}
