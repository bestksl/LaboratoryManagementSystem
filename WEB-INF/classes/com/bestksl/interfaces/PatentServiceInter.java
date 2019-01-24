package com.bestksl.interfaces;

import java.util.ArrayList;

import com.bestksl.domain.Patent;

public interface PatentServiceInter extends BaseInter{
	
	public ArrayList<Patent> getPatentByList();

	public void delete(int id);

	public String getFileDirById(int id);

}
