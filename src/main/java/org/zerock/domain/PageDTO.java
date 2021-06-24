package org.zerock.domain;

import lombok.Getter;

@Getter
public class PageDTO {
	
//	private int pageNum;
//	private int amount;
	
	private Criteria cri;
	
	private int startPage; // 현재 페이지 기준 시작 페이지
	private int endPage; // 현재 페이지 기준 마지막 페이지
	
	private boolean prev; // 이전 페이지 버튼 표시 유무
	private boolean next; // 다음 페이지 버튼 표시 유무
	
	private int total; // 총 게시물 수

	public PageDTO(Criteria cri, int total) {
		
		this.cri = cri;
		
		int currentPage = cri.getPageNum();
		int numPerPage = cri.getAmount();
		
		// 현재 페이지가 1 ~ 10 이면
		// 시작은 = 1
		// 종료는 = 10 
		
		this.endPage = ((currentPage - 1) / 10 + 1) * 10;
		this.startPage = endPage - 9;
		
		// 가장 마지막 페이지
		int realEnd = total / numPerPage;
		
		if (total % numPerPage == 0) {
			realEnd = realEnd + 1;
		}
		
		// '마지막 페이지'와 '가장 마지막 페이지' 비교
		this.endPage = Math.min(endPage, realEnd);
		
		// 이전, 다음 버튼 표시 여부
		this.prev = this.startPage > 1;
		this.next = this.endPage < realEnd;
	}
	
	
	
}
