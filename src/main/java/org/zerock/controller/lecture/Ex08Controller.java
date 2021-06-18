package org.zerock.controller.lecture;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.zerock.controller.lecture.domain.User;

import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/ex08/*")
@Log4j
public class Ex08Controller {
	 
	// Handler Method에 Model 정의하기
	
	@RequestMapping("/sub01")
	public void method01(Model model) {
		log.info("ex08, sub01 method is working");
		
		model.addAttribute("name", "jinah");
		model.addAttribute("age", 27);
	}
	
	@RequestMapping("/sub02")
	public void method02(Model model) {
		log.info("ex08, sub02 method is working");
		
		User user = new User();
		user.setId("jinah");
		user.setAge(27);
		
		model.addAttribute("user", user);
	}
	
	@RequestMapping("/sub03")
	// parameter에 model 만 쓸 수 있는건지? 
	public String method03(Model model) {
		log.info("ex08, sub03 method is working");
		
		User user = new User();
		user.setId("Korea");
		user.setAge(5000);
		
		model.addAttribute(user);
		
		// forward? 
		return "ex08/sub02";
	}
	
	@RequestMapping("/sub04")
	public String method04(User user, Model model) {
		
		log.info("ex08, sub04 methos is working");
		
		model.addAttribute("user", user);
		
		return "ex08/sub02";
		
	}
	
	@RequestMapping("/sub05")
	// type명을 따라간다 => user
	public String method05(@ModelAttribute("user") User user, Model model) {
		
		log.info("ex08, sub06 method is working");
		
		return "ex08/sub02";
	}
	
	@RequestMapping("/sub06")
	public String method06(@ModelAttribute User user, Model model) {
		
		log.info("ex08, sub05 method is working");
		
		return "ex08/sub02";
	}
	
	@RequestMapping("/sub07")
	// modelAttribute를 생략해도 자동으로 로직을 처리한다
	public String method07(User user, Model model) {
		log.info("ex08, sub07 method is working");
		
		// lowerCase로 간주한다
		model.addAttribute("hello world");
		model.addAttribute(10);
		
		return "ex08/sub02";
	}
	
	@RequestMapping("/sub08")
	public String method08(User user) {
		log.info("ex08, sub08 method is working");
		
		return "ex08/sub02";
	}
	
	// Using Primitive or String type data for method parameters
	@RequestMapping("/sub09")
//	public void method09(@RequestParam int age, String name) { >>>> requestparam 생략 가능
	// String name = request.getParameter("name");
	// Model Attribute가 아니기 때문에 query string으로 값을 넣어도
	// 브라우저에 출력되지 않는다
//	public void method09(int age, String name) {
	
	public void method09(@ModelAttribute("age") int age, @ModelAttribute("name") String name) {
		log.info("ex08, sub09 method is working");
		
		log.info(age);
		log.info(name);
	}
}
