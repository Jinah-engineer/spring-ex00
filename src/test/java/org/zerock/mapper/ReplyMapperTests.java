package org.zerock.mapper;

import static org.junit.Assert.*;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.zerock.domain.ReplyVO;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class ReplyMapperTests {

	@Setter(onMethod_ = @Autowired)
	ReplyMapper mapper;
	
	@Test
	public void testMapper() {
		assertNotNull(mapper);
	}

	@Test
	public void testInsert() {
		
		ReplyVO vo = new ReplyVO();
		
		vo.setReply("정국이");
		vo.setReplyer("전정국");
		vo.setBno(88L);
		
		int cnt = mapper.insert(vo);
		assertEquals(1, cnt);
	}
	
	@Test
	public void testRead() {
		ReplyVO vo = mapper.read(1L);
		
		assertEquals("이거슨 댓글!", vo.getReply());
	}
	
	@Test
	public void testDelete() {
		ReplyVO vo = new ReplyVO();
		
		vo.setBno(88L);
		vo.setReply("정국이");
		vo.setReplyer("전정국");
		
		mapper.insertSelectKey(vo);
		
		int cnt = mapper.delete(14L);
		
		assertEquals(1, cnt);
	}
	
	@Test
	public void testUpdate() {
		ReplyVO vo = mapper.read(2L);
		
		String repl = "정국이 수정 댓글";
		
		vo.setReply(repl);
		
		assertEquals(1, mapper.update(vo));
		
		vo = mapper.read(2L);
		assertEquals(repl, vo.getReply());
	}
}
