package org.zerock.controller.lecture;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/ex04/*")
@Log4j
public class Ex04Controller {

	@RequestMapping("/sub01")
	public void method01(String date) {
		log.info("ex04, sub01 method is working");
		
		log.info(date);
	}
	
	@RequestMapping("/sub02")
	// requestParam은 String 타입을 넣을 수 있지만, Date 타입의 객체를 넣으려면 변환을 해줘야 한다
	public void method02(@RequestParam Date date) {
		log.info("ex04, sub02 method is working");
		
		log.info(date);
	}
	
	@InitBinder
	public void initBinder(WebDataBinder binder) {
		log.info("init binder");
		
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		binder.registerCustomEditor(Date.class, new CustomDateEditor(format, false));
	}
}
