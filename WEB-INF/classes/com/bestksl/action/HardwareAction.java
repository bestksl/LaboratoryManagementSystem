package com.bestksl.action;

import java.util.ArrayList;

import com.bestksl.domain.Hardware;
import com.bestksl.interfaces.HardwareServiceInter;
import com.bestksl.service.HardwareService;
import com.opensymphony.xwork2.ActionSupport;

public class HardwareAction extends ActionSupport {

	private HardwareServiceInter hs = new HardwareService();
	private int id;
	private ArrayList<Hardware> HardwareList;
	private Hardware hardware;

	
	public String toHardware() {
		HardwareList = hs.getHardwareByList();
		return "tohardware";
	}

	public ArrayList<Hardware> getHardwareList() {
		return HardwareList;
	}

	public String toAddHardware() {
		return "toaddhardware";
	}

	public String toUpdateHardware() {
		hardware = hs.getHardwareById(id);
		return "toupdatehardware";
	}

	public String update() {
		hs.update(hardware);
		HardwareList = hs.getHardwareByList();
		this.addFieldError(SUCCESS, "修改成功");
		return "toupdatehardware";
	}

	public String delete() {
		hs.delete(id);
		HardwareList = hs.getHardwareByList();
		return "tohardware";
	}

	public String add() {
		hs.add(hardware);
		this.addFieldError(SUCCESS, "添加硬件信息成功");
		return "toaddhardware";
	}

	public void setHardwareList(ArrayList<Hardware> hardwareList) {
		HardwareList = hardwareList;
	}

	public Hardware getHardware() {
		return hardware;
	}

	public void setHardware(Hardware hardware) {
		this.hardware = hardware;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

}
