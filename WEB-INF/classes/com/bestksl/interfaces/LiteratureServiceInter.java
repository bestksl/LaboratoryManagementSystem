package com.bestksl.interfaces;

import java.util.ArrayList;

import com.bestksl.domain.Literature;

public interface LiteratureServiceInter extends BaseInter{
	
	public ArrayList<Literature> getLiteratureByList();

	public void delete(int id);

	public String getFileDirById(int id);

}
