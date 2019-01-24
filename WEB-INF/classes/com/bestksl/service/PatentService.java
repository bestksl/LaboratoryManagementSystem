package com.bestksl.service;

import java.util.ArrayList;

import com.bestksl.domain.Patent;
import com.bestksl.interfaces.PatentServiceInter;
import com.bestksl.util.HibernateUtil;

public class PatentService extends BaseService implements PatentServiceInter{

	/*
	 * µ¥Àý
	 */
	/*private static PatentService instance;

	private PatentService() {
	}

	public static PatentService getInstance() {
		if (instance == null) {
			instance = new PatentService();
		}
		return instance;
	}*/

	public ArrayList<Patent> getPatentByList() {
		String hql = "from Patent";
		ArrayList<Patent> list = (ArrayList<Patent>) HibernateUtil.executeQuery(hql, null);
		return list;
	}

	public void delete(int id) {
		String hql = " from Patent where id=? ";
		String[] parameters = { id + "" };
		Patent patent = (Patent) HibernateUtil.uniqueQuery(hql, parameters);
		HibernateUtil.executeDelete(patent);
	}

	public String getFileDirById(int id) {
		String path = (String) HibernateUtil.uniqueQuery("select filedir from Patent where id=?",
				new String[] { id + "" });
		return path;
	}

	
}
