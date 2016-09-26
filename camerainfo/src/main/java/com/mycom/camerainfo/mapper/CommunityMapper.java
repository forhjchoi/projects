package com.mycom.camerainfo.mapper;

import java.util.HashMap;

import org.apache.ibatis.annotations.Insert;
import org.springframework.stereotype.Repository;

@Repository
public interface CommunityMapper {

	public static final String INSERT = "insert into community (idx, type, name, email, title, content, pic, wdate, step, ref, dep, hits) "
			+ "value (community_seq.NEXTVAL, 0, #{name}, #{email}, #{title}, #{content}, #{pic}, SYSDATE, 0, 0, 0, 0)";
	
	@Insert(INSERT)
	public int insert(HashMap<String, String> map); 
}
