package com.bestksl.service;

import java.util.ArrayList;

import com.bestksl.domain.Zongxiang;
import com.bestksl.interfaces.ZongxiangServiceInter;
import com.bestksl.util.HibernateUtil;

public class ZongxiangService extends BaseService implements ZongxiangServiceInter {

	@Override
	public ArrayList<Zongxiang> getZongxiangByList() {
		String hql = "from Zongxiang";
		ArrayList<Zongxiang> list = (ArrayList<Zongxiang>) HibernateUtil.executeQuery(hql, null);
		return list;
	}

	@Override
	public void delete(int id) {
		String hql = " from Zongxiang where id=? ";
		String[] parameters = { id + "" };
		Zongxiang zx = (Zongxiang) HibernateUtil.uniqueQuery(hql, parameters);
		HibernateUtil.executeDelete(zx);
	}

	@Override
	public String getFileDirById(int id) {
		String path = (String) HibernateUtil.uniqueQuery("select filedir from Zongxiang where id=?",
				new String[] { id + "" });
		return path;
	}

}
