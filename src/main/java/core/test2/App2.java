package core.test2;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class App2 {

	public static void main(String[] args) {
		System.out.println("프로그램 실행 2");
		
		
		String path = "core/test2/core-test2.xml";
		ApplicationContext context = new ClassPathXmlApplicationContext(path);
		
		Object bag = context.getBean("bag");
		System.out.println(bag);
		
		Object book = context.getBean("book");
		System.out.println(book);
		
		Bag b = (Bag) bag;
		b.setBook((Book) book);
		
		System.out.println(b);
	}
	
}
