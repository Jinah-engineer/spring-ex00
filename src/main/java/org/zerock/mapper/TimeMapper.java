package org.zerock.mapper;

import org.apache.ibatis.annotations.Select;

public interface TimeMapper {
	
	// SELECT 쿼리를 만들어주는 Annotation
	@Select("SELECT now()")
	public String getTime();
	
	public String getTime2();

}
