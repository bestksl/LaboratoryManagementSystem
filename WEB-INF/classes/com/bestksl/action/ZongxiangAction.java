package com.bestksl.action;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;

import org.apache.struts2.ServletActionContext;

import com.bestksl.domain.Zongxiang;
import com.bestksl.interfaces.ZongxiangServiceInter;
import com.bestksl.service.ZongxiangService;
import com.opensymphony.xwork2.ActionSupport;

public class ZongxiangAction extends ActionSupport {

	private File file;
	private String fileFileName;
	private int id;

	private Zongxiang zongxiang;

	private ArrayList<Zongxiang> zongxiangList;

	private ZongxiangServiceInter zs = new ZongxiangService();

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
			zongxiang.setFiledir(newFile.getAbsolutePath());
		}
		zs.add(zongxiang);
		this.addFieldError(SUCCESS, "添加成功");
		return "toaddzongxiang";
	}

	public String delete() {

		String path = zs.getFileDirById(id);
		if (path != null) {
			File file = new File(path);
			file.delete();
		}
		zs.delete(id);
		zongxiangList = zs.getZongxiangByList();
		return "tozongxiang";
	}

	public File getFile() {
		return file;
	}

	public String getFileFileName() {
		return fileFileName;
	}

	public int getId() {
		return id;
	}

	public Zongxiang getZongxiang() {
		return zongxiang;
	}

	public ArrayList<Zongxiang> getZongxiangList() {
		return zongxiangList;
	}

	public ZongxiangServiceInter getZs() {
		return zs;
	}

	public void setFile(File file) {
		this.file = file;
	}

	public void setFileFileName(String fileFileName) {
		this.fileFileName = fileFileName;
	}

	public void setId(int id) {
		this.id = id;
	}

	public void setZongxiang(Zongxiang zongxiang) {
		this.zongxiang = zongxiang;
	}

	public void setZongxiangList(ArrayList<Zongxiang> zongxiangList) {
		this.zongxiangList = zongxiangList;
	}

	public void setZs(ZongxiangServiceInter zs) {
		this.zs = zs;
	}

	public String toAddZongxiang() {
		return "toaddzongxiang";
	}

	public String toZongxiang() {
		zongxiangList = zs.getZongxiangByList();
		return "tozongxiang";
	}

}
