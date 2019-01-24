package com.bestksl.interfaces;

import java.util.ArrayList;

import com.bestksl.domain.Achievement;

public interface AchivementServiceInter extends BaseInter{

	public ArrayList<Achievement> getAchievementByList();

	public void delete(int id);

	public String getFileDirById(int id);

}
