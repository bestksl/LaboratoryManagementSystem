package com.bestksl.action;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;

import org.apache.struts2.ServletActionContext;

import com.bestksl.domain.Patent;
import com.bestksl.interfaces.PatentServiceInter;
import com.bestksl.service.PatentService;
import com.opensymphony.xwork2.ActionSupport;

public class PatentAction extends ActionSupport {

	private PatentServiceInter ps =new  PatentService();
	private Patent patent;
	private ArrayList<Patent> patentList;
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
			patent.setFiledir(newFile.getAbsolutePath());
		}
		ps.add(patent);
		this.addFieldError(SUCCESS, "添加成功");
		return "toaddpatent";
	}

	public String delete() {

		String path = ps.getFileDirById(id);
		if (path!=null) {
			File file = new File(path);
			file.delete();
		}
		ps.delete(id);
		patentList = ps.getPatentByList();
		return "topatent";
	}
public String toPatent(){
	patentList = ps.getPatentByList();
	return "topatent";
}
public String toAddPatent(){
	return "toaddpatent";
}
	public ArrayList<Patent> getPatentList() {
		return patentList;
	}

	public void setPatentList(ArrayList<Patent> patentList) {
		this.patentList = patentList;
	}

	public Patent getPatent() {
		return patent;
	}

	public void setPatent(Patent patent) {
		this.patent = patent;
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
}
