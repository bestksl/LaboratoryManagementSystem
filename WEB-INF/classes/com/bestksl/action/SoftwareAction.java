package com.bestksl.action;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;

import org.apache.struts2.ServletActionContext;

import com.bestksl.domain.Software;
import com.bestksl.interfaces.SoftwareServiceInter;
import com.bestksl.service.SoftwareService;
import com.opensymphony.xwork2.ActionSupport;

public class SoftwareAction extends ActionSupport {

	private SoftwareServiceInter ss = new SoftwareService();
	private Software software;
	private ArrayList<Software> softwareList;
	private File file;
	private String fileFileName;
	private int id;

	public String toSoftware() {
		softwareList = ss.getSoftwareByList();
		return "tosoftware";
	}

	public String toAddSoftware() {
		return "toaddsoftware";
	}

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
			software.setAddr(newFile.getAbsolutePath());
		}
		ss.add(software);
		this.addFieldError(SUCCESS, "添加成功");
		return "toaddsoftware";
	}

	public String delete() {
		String addr = ss.getAddrById(id);
		// 删除记录的同时删除上传的文件
		if (addr!=null) {
			File file = new File(addr);
			file.delete();
		}
		ss.delete(id);
		softwareList = ss.getSoftwareByList();
		return "tosoftware";
	}

	public Software getSoftware() {
		return software;
	}

	public void setSoftware(Software software) {
		this.software = software;
	}

	public ArrayList<Software> getSoftwareList() {
		return softwareList;
	}

	public void setSoftwareList(ArrayList<Software> softwareList) {
		this.softwareList = softwareList;
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
