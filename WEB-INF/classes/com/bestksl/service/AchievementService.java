package com.bestksl.service;

import java.util.ArrayList;

import com.bestksl.domain.Achievement;
import com.bestksl.interfaces.AchivementServiceInter;
import com.bestksl.util.HibernateUtil;

public class AchievementService extends BaseService implements AchivementServiceInter{ 

	/*
	 * µ¥Àý
	 */
	/*private static AchievementService instance;

	private AchievementService() {
	}

	public static AchievementService getInstance() {
		if (instance == null) {
			instance = new AchievementService();
		}
		return instance;
	}*/

	public ArrayList<Achievement> getAchievementByList() {
		String hql = "from Achievement";
		ArrayList<Achievement> list = (ArrayList<Achievement>) HibernateUtil.executeQuery(hql, null);
		return list;
	}

	public void delete(int id) {
		String hql = " from Achievement where id=? ";
		String[] parameters = { id + "" };
		Achievement achievement = (Achievement) HibernateUtil.uniqueQuery(hql, parameters);
		HibernateUtil.executeDelete(achievement);
	}

	public String getFileDirById(int id) {
		String path = (String) HibernateUtil.uniqueQuery("select filedir from Achievement where id=?",
				new String[] { id + "" });
		return path;
	}

//	public void add(Achievement achievement) {
//		HibernateUtil.save(achievement);
//	}
}
