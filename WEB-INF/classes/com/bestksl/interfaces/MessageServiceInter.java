package com.bestksl.interfaces;

import java.util.ArrayList;

import com.bestksl.domain.Message;

public interface MessageServiceInter extends BaseInter{

	public void update(Message message);

	public void delete(int id);


	public Message getMessageById(int id);

	public ArrayList<Message> getMessageByList();
}
