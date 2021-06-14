package lombok.test;

import lombok.EqualsAndHashCode;
import lombok.RequiredArgsConstructor;
import lombok.ToString;

// final field만 받아내는 생성자
@RequiredArgsConstructor

// toString method
@ToString

// equals() and hashCode()
@EqualsAndHashCode

public class Desk {

	// final - 생성자에서 값을 1번만 할당받을 수 있다
	private final double price;
	private final String model;
	private String name;
	
	
}
