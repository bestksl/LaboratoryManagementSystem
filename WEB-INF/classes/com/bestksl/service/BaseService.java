package com.bestksl.service;

import java.io.Serializable;

import com.bestksl.interfaces.BaseInter;
import com.bestksl.util.HibernateUtil;

public abstract class BaseService implements BaseInter{

	@Override
	public void add(Serializable object) {
		HibernateUtil.save(object);
	}

	
}
