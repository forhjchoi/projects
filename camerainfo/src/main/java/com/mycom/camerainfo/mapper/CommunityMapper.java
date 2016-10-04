package com.mycom.camerainfo.mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface CommunityMapper {
	
	public static final String INSERT_FREE_NO_FILE = "insert into community (idx, type, name, email, title, content, wdate, hits) "
			+ "values (community_seq.NEXTVAL, 0, #{name}, #{email}, #{title}, #{content}, SYSDATE, 0)";
	
	@Insert(INSERT_FREE_NO_FILE)
//	public int insertFreeNoFile(CommunityDto commuDto);
	public void insertFreeNoFile(@Param("name") String name, @Param("email") String email, @Param("title") String title, @Param("content") String content); 
}
