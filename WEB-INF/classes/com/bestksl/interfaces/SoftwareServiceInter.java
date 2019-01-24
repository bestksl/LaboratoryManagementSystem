package com.bestksl.interfaces;

import java.util.ArrayList;

import com.bestksl.domain.Software;

public interface SoftwareServiceInter extends BaseInter{
	

	public String getAddrById(int id);

	public void delete(int id);

	public ArrayList<Software> getSoftwareByList();
}
