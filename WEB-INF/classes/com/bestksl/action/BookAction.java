package com.bestksl.action;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;

import org.apache.struts2.ServletActionContext;

import com.bestksl.domain.Book;
import com.bestksl.interfaces.BookServiceInter;
import com.bestksl.service.BookService;
import com.opensymphony.xwork2.ActionSupport;

public class BookAction extends ActionSupport {

	private BookServiceInter bs = new BookService();
	private Book book;
	private ArrayList<Book> bookList;
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
			book.setAddr(newFile.getAbsolutePath());
		}
		bs.add(book);
		this.addFieldError(SUCCESS, "添加成功");
		return "toaddbook";
	}

	public String delete() {

		String path = bs.getAddrById(id);
		if (path!=null) {
			File file = new File(path);
			file.delete();
		}
		bs.delete(id);
		bookList = bs.getBookByList();
		return "tobook";
	}

	public String toBook() {
		bookList = bs.getBookByList();

		return "tobook";
	}

	public String toAddBook() {
		return "toaddbook";
	}

	public Book getBook() {
		return book;
	}

	public void setBook(Book book) {
		this.book = book;
	}

	public ArrayList<Book> getBookList() {
		return bookList;
	}

	public void setBookList(ArrayList<Book> bookList) {
		bookList = bs.getBookByList();
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
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

}
