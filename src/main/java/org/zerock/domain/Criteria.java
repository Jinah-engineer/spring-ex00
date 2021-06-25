package org.zerock.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class Criteria {
	
	private int pageNum;
	private int amount;
	
	private String type;
	private String keyword;
	
	public Criteria() {
		this(1, 10);
	}
	
	public Criteria(int pageNum, int amount) {
		this.pageNum = pageNum;
		this.amount = amount;
	}
	
	public int getFrom() {
		return amount * (pageNum - 1);
	}
	
	// typeArr property 생성
	public String[] getTypeArr() {
		// 구분자에 의해서 String을 분리한 결과를 출력한다
		// type.split("");
		
		if (type == null) {
			return new String[] {};
		} else {
			String[] types = type.split("");
			return types;
		}
		
	}
}
