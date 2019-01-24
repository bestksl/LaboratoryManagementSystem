package com.bestksl.service;

import java.util.ArrayList;

import com.bestksl.domain.Book;
import com.bestksl.interfaces.BookServiceInter;
import com.bestksl.util.HibernateUtil;

public class BookService extends BaseService implements BookServiceInter{
	/*
	 * µ¥Àý
	 */
/*	private static BookService instance;

	private BookService() {
	}

	public static BookService getInstance() {
		if (instance == null) {
			instance = new BookService();
		}
		return instance;
	}*/

	public void delete(int id) {
		String hql = " from Book where id=? ";
		String[] parameters = { id + "" };
		Book book = (Book) HibernateUtil.uniqueQuery(hql, parameters);
		HibernateUtil.executeDelete(book);
	}

	public String getAddrById(int id) {
		String path = (String) HibernateUtil.uniqueQuery("select addr from Book where id=?",
				new String[] { id + "" });
		return path;
	}



	public ArrayList<Book> getBookByList() {
		String hql = "from Book";
		ArrayList<Book> list = (ArrayList<Book>) HibernateUtil.executeQuery(hql, null);
		return list;
	}
}
