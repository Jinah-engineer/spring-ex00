package org.zerock.controller.lecture;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/ex02/*")
@Log4j
public class Ex02Controller {

	@RequestMapping("/sub01")
	// parameter 값으로 넣어서 사용하기
	public void method01(HttpServletRequest request) {
		log.info("ex02, sub01 method is working !");
		log.info(request);
	}
	
	@RequestMapping("/sub02")
	public void method02(HttpServletRequest req) {
		log.info("ex02, sub02 method is working~");
		log.info(req.getParameter("id"));
		log.info(req.getParameter("age"));
		
	}
	
	
	@RequestMapping("/sub03")
	public void method03(@RequestParam("id") String idparam) {
		log.info("ex03, sub03 method is working-!");
	}
	
	@RequestMapping("/sub04")
	public void method04(@RequestParam("id") String idParam,
						@RequestParam("age") String ageParam) {
		log.info("ex02, sub04 method is working -!");
		log.info(idParam);
		log.info(ageParam);
	}

	// 자동 수집
	@RequestMapping("/sub05")
	// Spring이 알아서 같은 이름의 parameter값들을 수집해준다
	public void method05(@RequestParam String id,
						@RequestParam String age) {
		log.info("ex02, sub05 method is working");
		log.info(id);
		log.info(age);
	}
	
	// 자동 타입 변환
	@RequestMapping("/sub06")
	public void method6(int age) {
		log.info("ex02, sub06 method is working!");
		log.info(age);
	}
	
	
	@RequestMapping("/sub07")
	public void method07(@RequestParam String[] fav) {
		log.info("ex02, sub07 method is working!");
		
		for (String f : fav) {
			log.info(f);
		}
	}
	
	@RequestMapping("/sub08")
	public void method08(@RequestParam List<String> fav) {
		log.info("ex02, sub08 method is working!");
		
		log.info(fav);
	}
}
