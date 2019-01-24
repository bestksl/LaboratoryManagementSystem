package com.bestksl.service;

import java.util.ArrayList;

import com.bestksl.domain.Hardware;
import com.bestksl.interfaces.HardwareServiceInter;
import com.bestksl.util.HibernateUtil;

public class HardwareService extends BaseService implements HardwareServiceInter{
	/*
	 * µ¥Àý
	 */
	/*private static HardwareService instance;

	private HardwareService() {
	}


	public static HardwareService getInstance() {
		if (instance == null) {
			instance = new HardwareService();
		}
		return instance;
	}*/

	

	public void delete(int id) {
		String hql = "from Hardware where id=? ";
		String[] parameters = { id + "" };
		Hardware hardware = (Hardware) HibernateUtil.uniqueQuery(hql, parameters);
		HibernateUtil.executeDelete(hardware);
	}


	public void update(Hardware hardware) {
		HibernateUtil.executeUpdate(hardware);
	}


	public Hardware getHardwareById(int id) {
		String hql = "from Hardware where id=?";
		String[] parameters = { id + "" };
		Hardware hardware = (Hardware) HibernateUtil.uniqueQuery(hql, parameters);
		return hardware;
	}

	public ArrayList<Hardware> getHardwareByList() {
		String hql = "from Hardware";
		ArrayList<Hardware> list = (ArrayList<Hardware>) HibernateUtil.executeQuery(hql, null);
		return list;
	}
}
