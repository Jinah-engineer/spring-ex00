package org.zerock.controller.lecture.rest;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.zerock.controller.lecture.domain.User;

//@Controller
//@ResponseBody // 모든 method에 붙인 것과 동일한 결과

@RestController // = @Controller + @ResponseBody
@RequestMapping("/rest02")
public class Ex02RestController {
	
	@RequestMapping("/sub01")
	public String method01() {
		return "response body1";
	}
	
	@RequestMapping("/sub02")
	public User method02() {
		
		User user = new User();
		
		user.setId("Korea");
		user.setAge(1);
		
		return user;
	}
	
	@RequestMapping("/sub03")
	public List<String> method03() {
		List<String> list = new ArrayList<>();
		
		list.add("java");
		list.add("script");
		list.add("object");
		list.add("notation");
		
		return list;
		
	}
	
	@RequestMapping("/sub04")
	public List<User> method04() {
		
		List<User> list = new ArrayList<User>();
		
		User user = new User();
		
		user.setId("Seoul");
		user.setAge(3);
		
		list.add(user);
		list.add(user);
		list.add(user);
		
		return list;
	}
	
	@RequestMapping("/sub05")
	public String[] method05() {
		return new String[] {"java", "script", "object", "notation"};
	}
	
	@RequestMapping("/sub06")
	public Map<String, String> method06() {
		
		Map<String, String> map = new HashMap<String, String>();
		
		map.put("j1", "jinah-1");
		map.put("j2", "jinah-2");
		map.put("j3", "jinah-3");
		
		return map;
	}
	
	@RequestMapping("/sub07")
	public Map<String, User> method07() {
		
		Map<String, User> map = new HashMap<String, User>();
		
		User user = new User();
		
		user.setId("Jinah");
		user.setAge(27);
		
		map.put("user1", user);
		map.put("user2", user);
		map.put("user3", user);
		
		return map;
	}
}
