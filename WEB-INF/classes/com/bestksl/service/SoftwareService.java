package com.bestksl.service;

import java.util.ArrayList;

import com.bestksl.domain.Software;
import com.bestksl.interfaces.SoftwareServiceInter;
import com.bestksl.util.HibernateUtil;

public class SoftwareService extends BaseService implements SoftwareServiceInter{
	/*
	 * µ¥Àý
	 */
	/*private static SoftwareService instance;

	private SoftwareService() {
	}

	public static SoftwareService getInstance() {
		if (instance == null) {
			instance = new SoftwareService();
		}
		return instance;
	}*/



	public String getAddrById(int id) {
		String path = (String) HibernateUtil.uniqueQuery("select addr from Software where id=?",
				new String[] { id + "" });
		return path;
	}

	public void delete(int id) {
		String hql = " from Software where id=? ";
		String[] parameters = { id + "" };
		Software software = (Software) HibernateUtil.uniqueQuery(hql, parameters);
		HibernateUtil.executeDelete(software);
	}

	public ArrayList<Software> getSoftwareByList() {
		String hql = "from Software";
		ArrayList<Software> list = (ArrayList<Software>) HibernateUtil.executeQuery(hql, null);
		return list;
	}
}
