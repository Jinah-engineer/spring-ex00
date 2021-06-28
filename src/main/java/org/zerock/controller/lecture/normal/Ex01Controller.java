package org.zerock.controller.lecture.normal;

import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import lombok.extern.log4j.Log4j;

@Controller
// ()안에 경로 지정
@RequestMapping("/ex01/*")
@Log4j
public class Ex01Controller {

	// method가 일하는 경로
	@RequestMapping("/sub01")
	public void method01() {
		// System.out.println("ex01, sub01 method is working :-)");
		log.info("ex01, sub01 method is working :-)");
	}

	@RequestMapping("/sub02")
	public void method02() {
		log.info("ex02, sub02 method is working !!");
	}
	
	// Get 방식의 요청 처리 방법
	@RequestMapping(value = "/sub03", method = RequestMethod.GET)
	public void method03() {
		log.info("ex01, sub03 method is working !!");

	}
	
	@RequestMapping(value = "sub03", method = RequestMethod.POST)
	public void method04() {
		log.info("ex01, sub03 post method is working ~!!!");
	}
	
	@GetMapping("/sub05")
	public void method05() {
		log.info("ex01, sub05 post method is working ~!!!");

	}
	
	@PostMapping("/sub06")
	public void method06() {
		log.info("ex01, sub06 post method is working ~!!!");

	}
}
