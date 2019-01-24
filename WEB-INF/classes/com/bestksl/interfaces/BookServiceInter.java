package com.bestksl.interfaces;

import java.util.ArrayList;

import com.bestksl.domain.Book;

public interface BookServiceInter extends BaseInter{
	
	public void delete(int id);

	public String getAddrById(int id);


	public ArrayList<Book> getBookByList();
}
