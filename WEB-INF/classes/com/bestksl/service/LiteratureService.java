package com.bestksl.service;

import java.util.ArrayList;

import com.bestksl.domain.Literature;
import com.bestksl.interfaces.LiteratureServiceInter;
import com.bestksl.util.HibernateUtil;

public class LiteratureService extends BaseService implements LiteratureServiceInter {

	/*
	 * µ¥Àý
	 */
	/*private static LiteratureService instance;

	private LiteratureService() {
	}

	public static LiteratureService getInstance() {
		if (instance == null) {
			instance = new LiteratureService();
		}
		return instance;
	}*/

	public ArrayList<Literature> getLiteratureByList() {
		String hql = "from Literature";
		ArrayList<Literature> list = (ArrayList<Literature>) HibernateUtil.executeQuery(hql, null);
		return list;
	}

	public void delete(int id) {
		String hql = " from Literature where id=? ";
		String[] parameters = { id + "" };
		Literature literature = (Literature) HibernateUtil.uniqueQuery(hql, parameters);
		HibernateUtil.executeDelete(literature);
	}

	public String getFileDirById(int id) {
		String path = (String) HibernateUtil.uniqueQuery("select filedir from Literature where id=?",
				new String[] { id + "" });
		return path;
	}

	
}
