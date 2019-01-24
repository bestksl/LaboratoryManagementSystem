package com.bestksl.domain;
// Generated 2016-6-5 13:59:52 by Hibernate Tools 3.5.0.Final

import java.util.Date;

/**
 * Patent generated by hbm2java
 */
public class Patent implements java.io.Serializable {

	private Integer id;
	private String name;
	private String author;
	private Date time;
	private String type;
	private String number;
	private String filedir;

	public Patent() {
	}

	public Patent(String name, String author, Date time) {
		this.name = name;
		this.author = author;
		this.time = time;
	}

	public Patent(String name, String author, Date time, String type, String number, String filedir) {
		this.name = name;
		this.author = author;
		this.time = time;
		this.type = type;
		this.number = number;
		this.filedir = filedir;
	}

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAuthor() {
		return this.author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public Date getTime() {
		return this.time;
	}

	public void setTime(Date time) {
		this.time = time;
	}

	public String getType() {
		return this.type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getNumber() {
		return this.number;
	}

	public void setNumber(String number) {
		this.number = number;
	}

	public String getFiledir() {
		return this.filedir;
	}

	public void setFiledir(String filedir) {
		this.filedir = filedir;
	}

}
