package com.bestksl.action;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;

import org.apache.struts2.ServletActionContext;

import com.bestksl.domain.Literature;
import com.bestksl.interfaces.LiteratureServiceInter;
import com.bestksl.service.LiteratureService;
import com.opensymphony.xwork2.ActionSupport;

public class LiteratureAction extends ActionSupport {

	private LiteratureServiceInter ls =new LiteratureService();
	private Literature literature;
	private ArrayList<Literature> literatureList;
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
			literature.setFiledir(newFile.getAbsolutePath());
		}
		ls.add(literature);
		this.addFieldError(SUCCESS, "添加成功");
		return "toaddliterature";
	}

	public String delete() {

		String path = ls.getFileDirById(id);
		if (path!=null) {
			File file = new File(path);
			file.delete();
		}
		ls.delete(id);
		setLiteratureList(ls.getLiteratureByList());
		return "toliterature";
	}

	public String toLiterature() {
		setLiteratureList(ls.getLiteratureByList());
		return "toliterature";
	}

	public String toAddLiterature() {
		return "toaddliterature";
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

	public Literature getLiterature() {
		return literature;
	}

	public void setLiterature(Literature literature) {
		this.literature = literature;
	}

	public ArrayList<Literature> getLiteratureList() {
		return literatureList;
	}

	public void setLiteratureList(ArrayList<Literature> literatureList) {
		this.literatureList = literatureList;
	}

	
}
