package org.zerock.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;
import org.zerock.domain.BoardVO;
import org.zerock.domain.Criteria;

public interface BoardMapper {
	
//	@Select("SELECT * FROM tbl_board")
	public List<BoardVO> getList();	
	
	// INSERT INTO tbl_board (title, content, writer)
	// VALUES (#{title}, #{content}, #{writer})
	// #{} --> board.get___와 동일
	
	
	public List<BoardVO> getListWithPaging(Criteria cri);
	
	
	public int insert(BoardVO board);
	/*
	  	String sql = "INSERT INTO tbl_board (title, content, writer) VALUES (?, ?, ?)";
	  	...
	  	pstmt.setString(1, board.getTitle);
	  	pstmt.setString(2, board.getContent());
	  	pstmt.setString(3, board.getWriter());
	  	
	  	pstmt.executeUpdate();
	  
	 */
	
	public int insertSelectKey(BoardVO board);
	
	public BoardVO read(long bno);

	public int delete(long bno);
	
	public int update(BoardVO board);

	public int getTotalCount(Criteria cri);
}
