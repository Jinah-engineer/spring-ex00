package lombok.test;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

// Class에 전체 명시 가능
@Getter
@Setter

// 모든 field의 값을 받는 생성자 
@AllArgsConstructor

// 기본 생성자 (parameter 없는)
@NoArgsConstructor

public class Book {
	
	private String title;
	
	private double price;
	
}
