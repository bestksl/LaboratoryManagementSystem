package com.bestksl.action;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;

import org.apache.struts2.ServletActionContext;

import com.bestksl.domain.Paper;
import com.bestksl.interfaces.PaperServiceInter;
import com.bestksl.service.PaperService;
import com.opensymphony.xwork2.ActionSupport;

public class PaperAction extends ActionSupport {

	private PaperServiceInter ps = new PaperService();
	private ArrayList<Paper> paperList;
	private File file;
	private String fileFileName;
	private Paper paper;
	private int id;

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
			paper.setFiledir(newFile.getAbsolutePath());
		}
		ps.add(paper);
		this.addFieldError(SUCCESS, "添加成功");
		return "toaddpaper";
	}

	public String delete() {

		String path = ps.getFileDirById(id);
		if (path != null) {
			File file = new File(path);
			file.delete();
		}
		ps.delete(id);
		paperList = ps.getPaperByList();
		return "topaper";
	}

	public String find() {
		if (this.paper.getName() != null) {
			this.paperList = ps.findPaperByList(this.paper.getName());
		}
		return "topaper";
	}

	public ArrayList<Paper> getPaperList() {
		return paperList;
	}

	public void setPaperList(ArrayList<Paper> paperList) {
		this.paperList = paperList;
	}

	public String toPaper() {
		paperList = ps.getPaperByList();
		return "topaper";
	}

	public String toAddPaper() {
		return "toaddpaper";
	}

	public Paper getPaper() {
		return paper;
	}

	public void setPaper(Paper paper) {
		this.paper = paper;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getFileFileName() {
		return fileFileName;
	}

	public void setFileFileName(String fileFileName) {
		this.fileFileName = fileFileName;
	}

	public File getFile() {
		return file;
	}

	public void setFile(File file) {
		this.file = file;
	}

}