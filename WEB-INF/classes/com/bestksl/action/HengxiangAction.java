package com.bestksl.action;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;

import org.apache.struts2.ServletActionContext;

import com.bestksl.domain.Hengxiang;
import com.bestksl.interfaces.HengxiangServiceInter;
import com.bestksl.service.HengxiangService;
import com.opensymphony.xwork2.ActionSupport;

public class HengxiangAction extends ActionSupport {

	private File file;
	private String fileFileName;
	private Hengxiang hengxiang;
	private ArrayList<Hengxiang> hengxiangList;
	private HengxiangServiceInter hs = new HengxiangService();

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
			hengxiang.setFiledir(newFile.getAbsolutePath());
		}
		hs.add(hengxiang);
		this.addFieldError(SUCCESS, "添加成功");
		return "toaddhengxiang";
	}
	
	public String delete() {

		String path = hs.getFileDirById(id);
		if (path!=null) {
			File file = new File(path);
			file.delete();
		}
		hs.delete(id);
		hengxiangList = hs.getHengxiangByList();
		return "tohengxiang";
	}
	
	public String toHengxiang() {
		hengxiangList = hs.getHengxiangByList();
		return "tohengxiang";
	}

	public String toAddHengxiang() {
		return "toaddhengxiang";
	}
	
	public File getFile() {
		return file;
	}

	public String getFileFileName() {
		return fileFileName;
	}

	public Hengxiang getHengxiang() {
		return hengxiang;
	}

	public ArrayList<Hengxiang> getHengxiangList() {
		return hengxiangList;
	}


	public HengxiangServiceInter getHs() {
		return hs;
	}

	public int getId() {
		return id;
	}

	public void setFile(File file) {
		this.file = file;
	}

	public void setFileFileName(String fileFileName) {
		this.fileFileName = fileFileName;
	}

	public void setHengxiang(Hengxiang hengxiang) {
		this.hengxiang = hengxiang;
	}


	public void setHengxiangList(ArrayList<Hengxiang> hengxiangList) {
		this.hengxiangList = hengxiangList;
	}

	public void setHs(HengxiangServiceInter hs) {
		this.hs = hs;
	}

	public void setId(int id) {
		this.id = id;
	}

}
