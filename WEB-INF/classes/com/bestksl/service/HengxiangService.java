package com.bestksl.service;

import java.util.ArrayList;

import com.bestksl.domain.Hengxiang;
import com.bestksl.interfaces.HengxiangServiceInter;
import com.bestksl.util.HibernateUtil;

public class HengxiangService extends BaseService implements HengxiangServiceInter {

	@Override
	public ArrayList<Hengxiang> getHengxiangByList() {
		String hql = "from Hengxiang";
		ArrayList<Hengxiang> list = (ArrayList<Hengxiang>) HibernateUtil.executeQuery(hql, null);
		return list;
	}

	@Override
	public void delete(int id) {
		String hql = " from Hengxiang where id=? ";
		String[] parameters = { id + "" };
		Hengxiang hx = (Hengxiang) HibernateUtil.uniqueQuery(hql, parameters);
		HibernateUtil.executeDelete(hx);
	}

	@Override
	public String getFileDirById(int id) {
		String path = (String) HibernateUtil.uniqueQuery("select filedir from Hengxiang where id=?",
				new String[] { id + "" });
		return path;
	}

}
