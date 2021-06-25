package org.zerock.sample;

import static org.junit.Assert.*;

import org.junit.Test;

public class StringSplitTest {

	@Test
	public void test() {
		
		String str1 = "java,spring,css";
		
		String[] arr1 = str1.split(",");
		
		assertEquals("java", arr1[0]);
		assertEquals("spring", arr1[1]);
		assertEquals("css", arr1[2]);
		
	}

	@Test
	public void test2() {
		String str1 = "TWC";
		
		// 빈 String으로 구분 --> 각 character가 각각 끊어지게 된다
		String[] arr1 = str1.split("");
		
		assertEquals(3, arr1.length);
		assertEquals("T", arr1[0]);
		assertEquals("W", arr1[1]);
		assertEquals("C", arr1[2]);
	}
	
}
