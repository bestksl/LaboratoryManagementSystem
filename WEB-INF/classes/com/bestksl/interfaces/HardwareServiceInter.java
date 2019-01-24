package com.bestksl.interfaces;

import java.util.ArrayList;

import com.bestksl.domain.Hardware;

public interface HardwareServiceInter extends BaseInter{
	

	public void delete(int id);

	public void update(Hardware hardware);

	public Hardware getHardwareById(int id);

	public ArrayList<Hardware> getHardwareByList();

}
