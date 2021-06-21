package org.zerock.mapper;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotEquals;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertTrue;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.zerock.domain.Test1VO;

import lombok.Setter;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class Test1Tests {

	@Setter(onMethod_ = @Autowired)
	private Test1Mapper mapper;
	
	@Test
	public void test1GetList() {
		assertNotNull(mapper);
		
		List<Test1VO> list = mapper.getList();
		
		assertTrue(list.size() > 0);
	}
	
	@Test
	public void test1Read() {
		Test1VO tvo = mapper.read(1);
		
		assertNotNull(tvo);
		assertEquals(1, tvo.getId());
		
		Test1VO test = new Test1VO();
		
		test.setName("joonhee2");
		test.setAge(26);
		
		int cnt = mapper.insertSelectKey(test);
		
		assertEquals(1, cnt);
		assertNotEquals(0, test.getId());
		
	}
	
	@Test
	public void testDelete() {
		int cnt = mapper.delete(0);
		
		assertEquals(0, cnt);
		
		Test1VO test = new Test1VO();
		
		test.setName("name");
		test.setAge(24);
		
		mapper.insertSelectKey(test);
		
		cnt = mapper.delete(test.getId());
		
		assertEquals(1, cnt);
	}
	
	@Test
	public void testUpdate() {
		int id = 5;
		
		Test1VO test = new Test1VO();
		
		test.setId(id);
		test.setName("jinyeong");
		test.setAge(24);
		
		int cnt = mapper.update(test);
		
		assertEquals(1, cnt);
		
		Test1VO test5 = mapper.read(id);
		assertEquals(test.getId(), test5.getId());
		assertEquals(test.getName(), test5.getName());
		assertEquals(test.getAge(), test5.getAge());
		
	}
	
}
