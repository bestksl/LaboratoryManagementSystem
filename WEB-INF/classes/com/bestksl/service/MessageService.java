package com.bestksl.service;

import java.util.ArrayList;

import com.bestksl.domain.Message;
import com.bestksl.interfaces.MessageServiceInter;
import com.bestksl.util.HibernateUtil;

public class MessageService extends BaseService implements MessageServiceInter{

	/*
	 * 单例
	 */
	/*private static MessageService instance;

	private MessageService() {
	}

	public static MessageService getInstance() {
		if (instance == null) {
			instance = new MessageService();
		}
		return instance;
	}*/

	public void update(Message message) {
		String hql = " from Message where id=? ";
		String[] parameters = { message.getId() + "" };
		Message initmessage=	(Message) HibernateUtil.uniqueQuery(hql, parameters);
		//将原先的user放入新的message
		message.setUser(initmessage.getUser());
		message.setTime(initmessage.getTime());
		HibernateUtil.executeUpdate(message);
	}

	public void delete(int id) {
		String hql = " from Message where id=? ";
		String[] parameters = { id + "" };
		Message message=(Message) HibernateUtil.uniqueQuery(hql, parameters);
		HibernateUtil.executeDelete(message);
	}

	

	public Message getMessageById(int id) { 
		String hql = "from Message where id=?";
		String[] parameters = { id + "" };
		Message message = (Message) HibernateUtil.uniqueQuery(hql, parameters);
		return message;
	}

	public ArrayList<Message> getMessageByList() {
		String hql = "from Message";
		ArrayList<Message> list = (ArrayList<Message>) HibernateUtil.executeQuery(hql, null);
		return list;
	}
}
