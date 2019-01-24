package com.bestksl.action;

import java.util.ArrayList;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.bestksl.domain.User;
import com.bestksl.interfaces.UserServiceInter;
import com.bestksl.service.UserService;
import com.opensymphony.xwork2.ActionSupport;

public class UserAction extends ActionSupport implements SessionAware {

	private Map<String, Object> session;
	private UserServiceInter us = new UserService();
	private User user;
	private int ismanager;
	private String securityCode;
	public String getSecurityCode() {
		return securityCode;
	}

	public void setSecurityCode(String securityCode) {
		this.securityCode = securityCode;
	}

	private ArrayList<User> userList;
	private String name;

	public String Login() throws Exception {

		if (user != null) {
			if (us.checkUser(user)) {

				if (securityCode!=null&&securityCode.equals(session.get("securityCode"))) {
					// 放入session
					user = us.getUserByName(user.getName());
					session.put("user", user);
					if (ismanager == 1) {
						if (us.isManager(user)) {// 判断是否是管理员
							return "tomanagermainpage";
						} else {
							this.addFieldError(INPUT, "您不是管理员");
							return "tologin";
						}
					}
					return "tomainpage";
				}else{
					this.addFieldError(INPUT, "验证码错误");
					return INPUT;
				}
			}
		}
		this.addFieldError(INPUT, "用户名或密码错误");
		return INPUT;
	}

	public String update() throws Exception {
		if (ismanager == 1) {
			user.setPermission(1);
		} else {
			user.setPermission(0);
		}
		us.update(user);
		this.addFieldError(SUCCESS, "用户" + user.getName() + "修改成功");
		return "toupdateuser";
	}

	public String delete() {
		us.delete(name);
		userList = us.getUserByList();
		return "tomanageuser";
	}

	public String toUpdateUser() {
		user = us.getUserByName(name);
		return "toupdateuser";
	}

	public String regist() throws Exception {
		if (!us.add(user)) {
			this.addFieldError("add", "用户名'" + user.getName() + "'已被注册");
			return "toregist";
		}
		this.addFieldError("add", "用户" + user.getName() + "注册成功");
		return "toregist";
	}

	public String toManageUser() {
		userList = us.getUserByList();
		return "tomanageuser";
	}

	public String toRegist() {
		return "toregist";
	}

	public String toLogin() {
		return "tologin";
	}

	public int getIsmanager() {
		return ismanager;
	}

	public String exit() {
		// 销毁登录信息
		if (session.get("user") != null) {
			session.clear();
		}
		return "tologin";
	}

	@Override
	public void setSession(Map<String, Object> arg0) {
		this.session = arg0;
	}

	public User getUser() {
		return user;
	}

	public void setUs(UserService us) {
		this.us = us;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Map<String, Object> getSession() {
		return session;
	}

	public void setIsmanager(int ismanager) {
		this.ismanager = ismanager;
	}

	public ArrayList<User> getUserList() {
		return userList;
	}

	public void setUserList(ArrayList<User> userList) {
		this.userList = userList;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
}
