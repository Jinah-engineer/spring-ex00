package org.zerock.controller.lecture.normal;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/ex06/*")
public class Ex06Controller {
	
	@RequestMapping("/sub01")
	public String method01() {
		log.info("ex06, sub01 method is working");
		
		
		return "ex06/sub01";
		
		
		// /WEB-INF/views/ex06-sub01.jsp - forwarding이 일어난다...!
		
		
	}
	
	@RequestMapping("/sub02")
	public void method02() {
		
		log.info("ex06, sub02 method is working");
		
	}
	
	@RequestMapping("/sub03")
	public String method03() {
		log.info("ex06, sub03 method is working");
		
		// sub02 method에게 forwarding - 1 request
		return "forward:/ex06/sub02";
	}
	
	@RequestMapping("/sub04")
	public String method04() {
		log.info("ex06, sub04 method is working");
		
		// response.sendRedirect(request.getContextPath() + "/otherPath");
		
		return "redirect:/ex06/sub02"; // 2 request
	}
	
}
