package core.test2;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import lombok.Setter;

// 해당 클래스가 Spring에서 객체로 만들어서 관리하는 대상임을 명시
// @Component("bag")
@Component
public class Bag {
	
	private Book book;

	@Autowired
	public Bag(Book book) {
		this.book = book;
	}
	
	@Override
	public String toString() {
		return "Bag [book=" + book + "]";
	}
	
	//@Autowired
	public void setBook(Book book) {
		this.book = book;
	}
	
}
