package com.bestksl.interfaces;

import java.util.ArrayList;

import com.bestksl.domain.User;

public interface UserServiceInter {

	public boolean checkUser(User user) throws Exception;

	public void delete(String name) ;

	public void update(User user) throws Exception;

	public boolean isManager(User user) ;

	public User getUserByName(String name) ;

	public ArrayList<User> getUserByList();

	public boolean add(User user) throws Exception;

}
