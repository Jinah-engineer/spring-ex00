package org.zerock.service;

import static org.junit.Assert.*;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.zerock.mapper.TxTest1MapperTests;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class TxTest1ServiceTests {

	@Setter(onMethod_ = @Autowired) 
	private TxTest1Service service;
		
	@Test
	public void testInsertOK() {
		service.insert("ab");
	}

	@Test(expected = Exception.class)
	public void testInsertFail() {
		
		service.insert("abc");                   
	}
}
