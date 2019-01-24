package com.bestksl.interfaces;

import java.util.ArrayList;

import com.bestksl.domain.Paper;

public interface PaperServiceInter extends BaseInter {

	public void delete(int id);

	public String getFileDirById(int id);

	public ArrayList<Paper> getPaperByList();

	public ArrayList<Paper> findPaperByList(String name);

}
