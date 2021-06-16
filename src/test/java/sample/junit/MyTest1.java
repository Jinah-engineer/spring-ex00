package sample.junit;

import static org.junit.Assert.*;

import org.junit.Test;

public class MyTest1 {

	@Test
	public void test() {
		// 테스트하려는 method - static methods 
		// org.junit.Assert에서 검색 가능
		
		// fail : 무조건 결과는 fail
		// fail("Not yet implemented");
		int i = 3;
		if (i != 3) {
			fail("i는 3이 아닙니다.");
		}
	}

	@Test
	public void equals1() {
		// expected 값과 actual 값이 같을 때만 성공
		int i = 3;
		assertEquals(i, 3);
	}
	
	@Test
	public void notEquals() {
		int i = 5;
		assertEquals(i , 3);
	}
	
	public void equals2() {
		int i = 3;
		boolean b = true;
		Object c = null;
		
		assertEquals(i, 3);
		
		assertEquals(b, true);
		
		// True이면 성공
		assertTrue(b);
		
		// Null이면 성공
		assertNull(c);
		
		// Not Null이면 성공
		assertNotNull(c);
	}
	
}
