package com.bestksl.interfaces;

import java.util.ArrayList;

import com.bestksl.domain.Zongxiang;

public interface ZongxiangServiceInter extends BaseInter{
	
	public ArrayList<Zongxiang> getZongxiangByList();

	public void delete(int id);

	public String getFileDirById(int id);
}
