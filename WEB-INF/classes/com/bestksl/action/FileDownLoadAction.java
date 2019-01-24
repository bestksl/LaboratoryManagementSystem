package com.bestksl.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;

import com.bestksl.util.HibernateUtil;
import com.opensymphony.xwork2.ActionSupport;

public class FileDownLoadAction extends ActionSupport {
	private String type;
	private int id;
	private String filename;

	public InputStream getInputStream() throws FileNotFoundException, UnsupportedEncodingException {
		InputStream inputStream;
		String path = null;
		File file = null;

		switch (type) {
		case "software":
			path = (String) HibernateUtil.uniqueQuery("select addr from Software where id=?", new String[] { id + "" });
			file = new File(path);
			filename = new String(file.getName().getBytes(), "ISO8859-1");
			inputStream = new FileInputStream(file);
			return inputStream;
		case "zongxiang":
			path = (String) HibernateUtil.uniqueQuery("select filedir from Zongxiang where id=?", new String[] { id + "" });
			file = new File(path);
			filename = new String(file.getName().getBytes(), "ISO8859-1");
			inputStream = new FileInputStream(file);
			return inputStream;
		case "hengxiang":
			path = (String) HibernateUtil.uniqueQuery("select filedir from Hengxiang where id=?", new String[] { id + "" });
			file = new File(path);
			filename = new String(file.getName().getBytes(), "ISO8859-1");
			inputStream = new FileInputStream(file);
			return inputStream;
		case "book":
			path = (String) HibernateUtil.uniqueQuery("select addr from Book where id=?", new String[] { id + "" });
			file = new File(path);
			filename = new String(file.getName().getBytes(), "ISO8859-1");
			inputStream = new FileInputStream(file);
			return inputStream;
		case "paper":
			path = (String) HibernateUtil.uniqueQuery("select filedir from Paper where id=?", new String[] { id + "" });
			file = new File(path);
			filename = new String(file.getName().getBytes(), "ISO8859-1");
			inputStream = new FileInputStream(file);
			return inputStream;
		case "patent":
			path = (String) HibernateUtil.uniqueQuery("select filedir from Patent where id=?", new String[] { id + "" });
			file = new File(path);
			filename = new String(file.getName().getBytes(), "ISO8859-1");
			inputStream = new FileInputStream(file);
			return inputStream;
		case "literature":
			path = (String) HibernateUtil.uniqueQuery("select filedir from Literature where id=?",
					new String[] { id + "" });
			file = new File(path);
			filename = new String(file.getName().getBytes(), "ISO8859-1");
			inputStream = new FileInputStream(file);
			return inputStream;
		case "achievement":
			path = (String) HibernateUtil.uniqueQuery("select filedir from Achievement where id=?",
					new String[] { id + "" });
			file = new File(path);
			filename = new String(file.getName().getBytes(), "ISO8859-1");
			inputStream = new FileInputStream(file);
			return inputStream;
		default:
			return null;
		}
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getFilename() {
		return filename;
	}

	public void setFilename(String filename) {
		this.filename = filename;
	}

}
