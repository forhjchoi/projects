package com.mycom.camerainfo.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import com.mycom.camerainfo.dto.CommunityDto;

@Repository
public interface CommunityMapper {
	
	public static final String INSERT_FREE = "insert into community (idx, type, name, email, title, content, wdate, hits) "
			+ "values (community_seq.NEXTVAL, 0, #{name}, #{email}, #{title}, #{content}, SYSDATE, 0)";
	
	public static final String INSERT_FREE_WITH_FILE = "insert into community (idx, type, name, email, title, content, pic, wdate, hits) "
			+ "values (community_seq.NEXTVAL, 0, #{name}, #{email}, #{title}, #{content}, #{pic}, SYSDATE, 0)";
	
	public static final String SELECT_CNT_FREE = "select count(*) from community where type = 0";
	
	public static final String SELECT_CNT_FREE_MIN = "select MIN(idx) from community where type = 0";
	
	public static final String SELECT_LIST_FREE = "select * from (select idx, title, name, wdate, hits, rownum, ceil(rownum/10) as page from "
			+ "(select * from community where type = 0 order by idx desc)) where page = #{page}";
	
	public static final String SELECT_LIST_FREE_RECENT = "selec";
	
	public static final String SELECT_FREE = "select idx, name, email, title, content, pic, wdate, hits from community where idx=#{idx}";
	
	public static final String UPDATE_FREE_HITS_CNT = "update community set hits = NVL2(hits, hits + 1, 1) where idx = #{idx}";
	
	@Insert(INSERT_FREE)
	public int insertFree(CommunityDto commuDto);
	
	@Insert(INSERT_FREE_WITH_FILE)
	public int insertFreeWithFile(@Param("name") String name, @Param("email") String email, 
			@Param("title") String title, @Param("content") String content, @Param("pic") String pic);
	
	@Select(SELECT_CNT_FREE)
	public int selectCntFree();
	
	@Select(SELECT_CNT_FREE_MIN)
	public int selectCntFreeMin();
	
	@Select(SELECT_LIST_FREE)
	public List<CommunityDto> selectListFree(@Param("page") int page);
	
	@Select(SELECT_FREE)
	@Results({
		@Result(property = "idx", column = "idx"),
		@Result(property = "name", column = "name"),
		@Result(property = "email", column = "email"),
		@Result(property = "title", column = "title"),
		@Result(property = "content", column = "content"),
		@Result(property = "file", column = "pic"),
		@Result(property = "wdate", column = "wdate"),
		@Result(property = "hits", column = "hits")
	})
	public CommunityDto selectFree(@Param("idx") int idx);
	
	@Update(UPDATE_FREE_HITS_CNT)
	public void updateFreeHitsCnt(@Param("idx") int idx);
}










