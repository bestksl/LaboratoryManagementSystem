package com.bestksl.service;

import java.util.ArrayList;

import com.bestksl.domain.Paper;
import com.bestksl.interfaces.PaperServiceInter;
import com.bestksl.util.HibernateUtil;

public class PaperService extends BaseService implements PaperServiceInter {
	/*
	 * µ¥Àý
	 */
	/*
	 * private static PaperService instance;
	 * 
	 * private PaperService() { }
	 * 
	 * public static PaperService getInstance() { if (instance == null) {
	 * instance = new PaperService(); } return instance; }
	 */

	public void delete(int id) {
		String hql = " from Paper where id=? ";
		String[] parameters = { id + "" };
		Paper paper = (Paper) HibernateUtil.uniqueQuery(hql, parameters);
		HibernateUtil.executeDelete(paper);
	}

	public String getFileDirById(int id) {
		String path = (String) HibernateUtil.uniqueQuery("select filedir from Paper where id=?",
				new String[] { id + "" });
		return path;
	}

	public ArrayList<Paper> getPaperByList() {
		String hql = "from Paper";
		ArrayList<Paper> list = (ArrayList<Paper>) HibernateUtil.executeQuery(hql, null);
		return list;
	}

	public ArrayList<Paper> findPaperByList(String name) {
		String hql = "from Paper where name like ? ";
		ArrayList<Paper> list = (ArrayList<Paper>) HibernateUtil.executeQuery(hql, new String[] { '%' + name + '%' });
		return list;
	}

}
