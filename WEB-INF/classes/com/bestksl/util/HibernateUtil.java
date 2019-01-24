package com.bestksl.util;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;

public class HibernateUtil {

	/*
	 * 这是一个工具类
	 */

	// SessionFactory单例
	private static SessionFactory sessionFactory = null;

	private HibernateUtil() {
	};

	static {
		Configuration conf = new Configuration().configure();
		ServiceRegistry serviceRegistry = new StandardServiceRegistryBuilder().applySettings(conf.getProperties())
				.build();
		sessionFactory = conf.buildSessionFactory(serviceRegistry);

		// sessionFactory = new
		// Configuration().configure().buildSessionFactory();
	}

	public static SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public static List<?> executeQuery(String hql, String[] parameter) {
		List<?> list = null;
		Session session = null;
		Transaction transaction = null;
		try {
			session = sessionFactory.openSession();
			transaction = session.beginTransaction();
			Query query = session.createQuery(hql);
			if (parameter != null) {
				for (int i = 0; i < parameter.length; i++) {
					query.setString(i, parameter[i]);
				}
			}
			list = query.list();
			transaction.commit();
		} catch (Exception e) {
			if (transaction != null) {
				transaction.rollback();
			}
			throw new RuntimeException(e.getMessage());
		} finally {
			if (session != null && session.isOpen()) {
				session.close();
			}
		}
		return list;
	}

	public static List<?> executeQueryByPage(String hql, String[] parameter, int pageNow, int pageSize) {
		List<?> list = null;
		Session session = null;
		Transaction transaction = null;
		try {
			session = sessionFactory.openSession();
			transaction = session.beginTransaction();
			Query query = session.createQuery(hql).setFirstResult(pageNow).setMaxResults(pageSize);
			if (parameter != null) {
				for (int i = 0; i < parameter.length; i++) {
					query.setString(i, parameter[i]);
				}
			}
			list = query.list();
			transaction.commit();
		} catch (Exception e) {
			if (transaction != null) {
				transaction.rollback();
			}
			// ythrow new RuntimeException("HibernateUtil--hql语句错误");
		} finally {
			if (session != null && session.isOpen()) {
				session.close();
			}
		}
		return list;
	}

	public static Object uniqueQuery(String hql, String[] parameter) {
		Object obj = null;
		Session session = null;
		Transaction transaction = null;
		try {
			session = sessionFactory.openSession();
			transaction = session.beginTransaction();
			Query query = session.createQuery(hql);
			if (parameter != null) {
				for (int i = 0; i < parameter.length; i++) {
					query.setString(i, parameter[i]);
				}
			}
			obj = query.uniqueResult();
			transaction.commit();
		} catch (Exception e) {
			if (transaction != null) {
				transaction.rollback();
			}
			// ythrow new RuntimeException("HibernateUtil--hql语句错误");
		} finally {
			if (session != null && session.isOpen()) {
				session.close();
			}
		}
		return obj;
	}

	public static void save(Object obj) {

		Session session = null;
		Transaction transaction = null;
		try {
			session = sessionFactory.openSession();
			transaction = session.beginTransaction();
			session.save(obj);
			transaction.commit();
		} catch (HibernateException e) {
			if (transaction != null) {
				transaction.rollback();
			}
			e.printStackTrace();

			throw new RuntimeException(e.getMessage());
		} finally {
			if (session != null && session.isOpen()) {
				session.close();
			}
		}

	}

	public static void executeUpdate(Object object) {

		Session session = null;
		Transaction transaction = null;
		try {
			session = sessionFactory.openSession();
			transaction = session.beginTransaction();
			session.update(object);
			transaction.commit();
		} catch (HibernateException e) {
			if (transaction != null) {
				transaction.rollback();
			}
			e.printStackTrace();
			throw new RuntimeException();
		} finally {
			if (session != null && session.isOpen()) {
				session.close();
			}
		}
	}

	public static void executeDelete(Object object) {

		Session session = null;
		Transaction transaction = null;
		try {
			session = sessionFactory.openSession();
			transaction = session.beginTransaction();
			session.delete(object);
			transaction.commit();
		} catch (HibernateException e) {
			if (transaction != null) {
				transaction.rollback();
			}
			e.printStackTrace();
			throw new RuntimeException();
		} finally {
			if (session != null && session.isOpen()) {
				session.close();
			}
		}
	}
}
