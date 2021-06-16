package core.test1;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class App1 {
	public static void main(String[] args) {

		System.out.println("의존성 주입 - Dependency Injection");

		// 적어도 2개 이상의 객체가 존재해야 한다 

		System.out.println("프로그램 실행 1");

		// Dest desk = new Desk();

		// ApplicationContext - 필요한 객체들을 생성 + 필요한 객체들을 주입하는 역할
		String path = "core/test1/core-test1.xml";
		ApplicationContext context = new ClassPathXmlApplicationContext(path);

		// 개발자들은 -> 
		// 객체와 객체를 분리해서 생성 
		// + 이 객체들을 엮는(wiring) 작업을 하는 형태의 개발을 하게 된다

		// Bean은 Object 타입
		Object o = context.getBean("desk");
		System.out.println(o);

		Object o2 = context.getBean("leg");
		System.out.println(o2);
		
		Object o3 = context.getBean("chair");
		System.out.println(o3);

	}
}