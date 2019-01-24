package com.bestksl.action;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;

import org.apache.struts2.ServletActionContext;

import com.bestksl.domain.Achievement;
import com.bestksl.interfaces.AchivementServiceInter;
import com.bestksl.service.AchievementService;
import com.opensymphony.xwork2.ActionSupport;

public class AchievementAction extends ActionSupport {

	private AchivementServiceInter as =new  AchievementService();
	private Achievement achievement;
	private ArrayList<Achievement> achievementList;
	private int id;

	private File file;
	private String fileFileName;

	public String add() throws IOException {
		BufferedInputStream bis;
		if (file != null) {
			String filedir = ServletActionContext.getServletContext().getRealPath("/WEB-INF/filecenter");
			File newFile = new File(filedir + "\\" + fileFileName);
			bis = new BufferedInputStream(new FileInputStream(file));
			BufferedOutputStream bos = new BufferedOutputStream(new FileOutputStream(newFile));
			byte[] temp = new byte[4 * 1024];
			while ((bis.read(temp)) != -1) {
				bos.write(temp);
			}
			bos.flush();
			bos.close();
			bis.close();
			// 将文件路径持久化
			achievement.setFiledir(newFile.getAbsolutePath());
		}
		as.add(achievement);
		this.addFieldError(SUCCESS, "添加成功");
		return "toaddachievement";
	}

	public String delete() {

		String path = as.getFileDirById(id);
		if (path!=null) {
			File file = new File(path);
			file.delete();
		}
		as.delete(id);
		setAchievementList(as.getAchievementByList());
		return "toachievement";
	}

	public String toAchievement() {
		setAchievementList(as.getAchievementByList());
		return "toachievement";
	}

	public String toAddAchievement() {
		return "toaddachievement";
	}

	public File getFile() {
		return file;
	}

	public void setFile(File file) {
		this.file = file;
	}

	public String getFileFileName() {
		return fileFileName;
	}

	public void setFileFileName(String fileFileName) {
		this.fileFileName = fileFileName;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public ArrayList<Achievement> getAchievementList() {
		return achievementList;
	}

	public void setAchievementList(ArrayList<Achievement> achievementList) {
		this.achievementList = achievementList;
	}

	public Achievement getAchievement() {
		return achievement;
	}

	public void setAchievement(Achievement achievement) {
		this.achievement = achievement;
	}
}
