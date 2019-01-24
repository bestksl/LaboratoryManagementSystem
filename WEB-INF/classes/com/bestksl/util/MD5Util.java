package com.bestksl.util;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class MD5Util {
	public final static String MD5(String s) throws NoSuchAlgorithmException {
		char hexDigits[] = { '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F' };
		byte[] btInput = s.getBytes();
		// ���MD5ժҪ�㷨�� MessageDigest ����
		MessageDigest mdInst = MessageDigest.getInstance("MD5");
		// ʹ��ָ�����ֽڸ���ժҪ
		mdInst.update(btInput);
		// �������
		byte[] md = mdInst.digest();
		// ������ת����ʮ�����Ƶ��ַ�����ʽ
		int j = md.length;
		char str[] = new char[j * 2];
		int k = 0;
		for (int i = 0; i < j; i++) {
			byte byte0 = md[i];
			str[k++] = hexDigits[byte0 >>> 4 & 0xf];
			str[k++] = hexDigits[byte0 & 0xf];
		}
		return new String(str);

	}

	public static void main(String[] args) throws NoSuchAlgorithmException {
		System.out.println(MD5Util.MD5("123"));
	}
}