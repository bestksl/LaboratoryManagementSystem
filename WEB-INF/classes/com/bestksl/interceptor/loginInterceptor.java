package com.bestksl.interceptor;

import java.util.Map;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

public class loginInterceptor extends AbstractInterceptor {
	private Map<String, Object> session;

	public String intercept(ActionInvocation ai) throws Exception {
		String result;
		session = ai.getInvocationContext().getSession();

		if (session != null) {
			if (session.get("user") != null) {
				result = ai.invoke();
				return result;
			} else {
				return "login";
			}
		} else {
			return "login";
		}

	}
}
