package com.bestksl.interfaces;

import java.util.ArrayList;

import com.bestksl.domain.Hengxiang;

public interface HengxiangServiceInter extends BaseInter{
	
	public ArrayList<Hengxiang> getHengxiangByList();

	public void delete(int id);

	public String getFileDirById(int id);
}
