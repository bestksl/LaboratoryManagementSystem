package com.bestksl.service;

import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.List;

import com.bestksl.domain.User;
import com.bestksl.interfaces.UserServiceInter;
import com.bestksl.util.HibernateUtil;
import com.bestksl.util.MD5Util;

public class UserService implements UserServiceInter {

	/*
	 * µ¥Àý
	 * 
	 * private static UserService instance;
	 * 
	 * private UserService() { }
	 * 
	 * public static UserService getInstance() { if (instance == null) {
	 * instance = new UserService(); } return instance; }
	 */

	public boolean checkUser(User user) throws NoSuchAlgorithmException {

		String hql = "from User where name=? and password=?";
		String[] parameters = { user.getName(), MD5Util.MD5(user.getPassword()) };
		List<User> list = (List<User>) HibernateUtil.executeQuery(hql, parameters);

		if (list.size() > 0) {
			return true;
		} else {
			return false;
		}
	}

	public void delete(String name) {
		String hql = " from User where name=? ";
		String[] parameters = { name };
		User user = (User) HibernateUtil.uniqueQuery(hql, parameters);
		HibernateUtil.executeDelete(user);
	}

	public void update(User user) throws NoSuchAlgorithmException {
		user.setPassword(MD5Util.MD5(user.getPassword()));
		HibernateUtil.executeUpdate(user);
	}

	public boolean isManager(User user) {

		if (user.getPermission() == 1) {
			return true;
		} else {
			return false;
		}
	}

	public User getUserByName(String name) {
		String hql = "from User where name=? ";
		String[] parameters = { name };
		User user = (User) HibernateUtil.uniqueQuery(hql, parameters);
		return user;

	}

	public ArrayList<User> getUserByList() {
		String hql = "from User";
		ArrayList<User> userList = (ArrayList<User>) HibernateUtil.executeQuery(hql, null);
		return userList;
	}

	public boolean add(User user) {
		// md5¼ÓÃÜ
		try {
			user.setPassword(MD5Util.MD5(user.getPassword()));
			HibernateUtil.save(user);
		} catch (Exception e) {
			return false;
		}
		return true;
	}
}
