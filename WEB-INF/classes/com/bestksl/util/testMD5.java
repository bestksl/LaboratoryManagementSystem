package com.bestksl.util;

import static org.junit.Assert.assertEquals;

import java.security.NoSuchAlgorithmException;

import org.junit.Test;

public class testMD5 {

	@Test
	public void testMd5() throws NoSuchAlgorithmException {
		MD5Util m = new MD5Util();
		assertEquals("202CB962AC59075B964B07152D234B70", m.MD5("123"));
	}

	@Test
	public void testMd52() throws NoSuchAlgorithmException {
		MD5Util m = new MD5Util();
		assertEquals("E807F1FCF82D132F9BB018CA6738A19F", m.MD5("1234"));
	}

}
