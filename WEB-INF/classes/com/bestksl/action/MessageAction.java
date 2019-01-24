package com.bestksl.action;

import java.util.ArrayList;
import java.util.Date;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.bestksl.domain.Message;
import com.bestksl.domain.User;
import com.bestksl.interfaces.MessageServiceInter;
import com.bestksl.service.MessageService;
import com.opensymphony.xwork2.ActionSupport;

public class MessageAction extends ActionSupport implements SessionAware {

	private Message message;
	private MessageServiceInter ms = new MessageService();
	private ArrayList<Message> messageList;
	private int id;

	Map<String, Object> session;

	public String add() {
		// 从session取出登陆userBean
		User user = (User) session.get("user");
		message.setTime(new Date());
		message.setUser(user);
		ms.add(message);
		this.addFieldError(SUCCESS, "消息发布成功");
		System.out.println(message.getMessage());
		return "toaddmessage";
	}
	
	public String add2() {
		// 从session取出登陆userBean
		User user = (User) session.get("user");
		message.setTime(new Date());
		message.setUser(user);
		ms.add(message);
		this.addFieldError(SUCCESS, "消息发布成功");
		System.out.println(message.getMessage());
		return "touseraddmessage";
	}

	public String delete() {
		ms.delete(id);
		messageList = ms.getMessageByList();
		return "tomanagemessage";
	}

	public String toManagerMainpage() {
		return "tomanagermainpage";
	}

	public String toShowMessage() {
		messageList = ms.getMessageByList();
		return "toshowmessage";
	}

	public String update() {
		ms.update(message);
		this.addFieldError(SUCCESS, "修改成功");
		return "toupdatemessage";
	}

	public String toUpdateMessage() {
		message = ms.getMessageById(id);
		return "toupdatemessage";
	}

	public String toManageMessage() {
		messageList = ms.getMessageByList();
		return "tomanagemessage";
	}

	public String toMainpage() {
		messageList = ms.getMessageByList();
		return "tomainpage";
	}

	public String toAddMessage() {

		return "toaddmessage";
	}

	public String toUserAddMessage() {

		return "touseraddmessage";
	}

	@Override
	public void setSession(Map<String, Object> arg0) {
		this.session = arg0;
	}

	public Message getMessage() {
		return message;
	}

	public ArrayList<Message> getMessageList() {
		return messageList;
	}

	public void setMessageList(ArrayList<Message> messageList) {
		this.messageList = messageList;
	}

	public Map<String, Object> getSession() {
		return session;
	}

	public void setMessage(Message message) {
		this.message = message;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
}
