package com.mycom.camerainfo.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import com.mycom.camerainfo.dto.GallaryDto;


@Repository
public interface GallaryMapper {
	
	static final String INSERT_MOBILE = "insert into gallary_mobile (num, type, title, author, pic, content, hits) values (gall_mob_seq.NEXTVAL, #{type}, #{title}, #{author}, #{pic}, #{content}, 0)";
	
	static final String INSERT_WORK = "insert into gallary_work (num, type, title, author, pic, content, hits) values (gall_work_seq.NEXTVAL, #{type}, #{title}, #{author}, #{pic}, #{content}, 0)";
	
	static final String SELECT_MOBILE = "select * from gallary_mobile where num=#{num}";
	
	static final String SELECT_WORK = "select * from gallary_work where num=#{num}";
	
	static final String SELECT_CNT_MOBILE = "select count(*) from gallary_mobile where type=#{type}";	
	
	static final String SELECT_CNT_WORK = "select count(*) from gallary_work where type = #{type}";
	
	static final String SELECT_MOBILE_LIST = "select * from (select num, type, title, author, content, pic, ceil(rownum/#{rowsPerPage}) as page from (select * from gallary_mobile where type = #{type} order by num desc)) where page = #{page}";
	
	static final String SELECT_WORK_LIST = "select * from (select num, type, title, author, content, pic, rownum, ceil(rownum/#{rowsPerPage}) as page from "
			+ "(select * from gallary_work where type = #{type} order by num desc)) where page = #{page}";
	
	static final String SELECT_WORK_LIST_BY_SEARCH_ALL = "select * from (select num, type, title, author, content, pic, rownum, ceil(rownum/#{rowsPerPage}) as page from "
			+ "(select * from gallary_work where title like '%'||#{keyword}||'%' or content like '%'||#{keyword}||'%' order by num desc)) where page = #{page}";
	
	
	static final String SELECT_WORK_LIST_BY_SEARCH_TITLE = "select * from (select num, type, title, author, content, pic, hits, rownum, ceil(rownum/#{rowsPerPage}) as page from "
			+ "(select * from gallary_work where title like '%'||#{keyword}||'%' order by num desc)) where page = #{page}";
	
	static final String SELECT_WORK_LIST_BY_SEARCH_CONTENT = "select * from (select num, type, title, author, content, pic, hits, rownum, ceil(rownum/#{rowsPerPage}) as page from "
			+ "(select * from gallary_work where content like '%'||#{keyword}||'%' order by num desc)) where page = #{page}"; 
			
	static final String UPDATE_MOBILE_HITS = "update gallary_mobile set hits = NVL2(hits, hits + 1, 1) where num = #{num}";
	
	static final String UPDATE_WORK_HITS = "update gallary_work set hits = NVL2(hits, hits + 1, 1) where num = #{num}";
		
	
	@Insert(INSERT_MOBILE)
//	public int insertMobile(GallaryDto gallDto);
	public int insertMobile(@Param("type") int type, @Param("title") String title, @Param("author") String author, @Param("pic") String pic, @Param("content") String content);
	
	@Insert(INSERT_WORK)
	public int insertWork(@Param("type") int type, @Param("title") String title, @Param("author") String author, @Param("pic") String pic, @Param("content") String content);
	
	@Select(SELECT_MOBILE)
	@Results({
		@Result(property = "num", column = "num"),
		@Result(property = "galltype", column = "type"),
		@Result(property = "title", column = "title"),
		@Result(property = "author", column = "author"),
		@Result(property = "file", column = "pic"),
		@Result(property = "content", column = "content"),
		@Result(property = "hits", column = "hits")
	})
	public GallaryDto selectMobile(@Param("num") int num);
	
	@Select(SELECT_WORK)
	@Results({
		@Result(property = "num", column = "num"),
		@Result(property = "galltype", column = "type"),
		@Result(property = "title", column = "title"),
		@Result(property = "author", column = "author"),
		@Result(property = "file", column = "pic"),
		@Result(property = "content", column = "content"),
		@Result(property = "hits", column = "hits")
	})
	public GallaryDto selectWork(@Param("num") int num);
	
	@Select(SELECT_MOBILE_LIST)
	@Results({
		@Result(property = "num", column = "num"),
		@Result(property = "galltype", column = "type"),
		@Result(property = "title", column = "title"),
		@Result(property = "author", column = "author"),
		@Result(property = "file", column = "pic"),
		@Result(property = "content", column = "content"),
		@Result(property = "hits", column = "hits")
	})
	public List<GallaryDto> selectMobileList(@Param("type") int type, @Param("page") int page, @Param("rowsPerPage") int rowsPerPage);
	
	@Select(SELECT_WORK_LIST)
	@Results(value = {
			@Result(property = "num", column = "num"),
			@Result(property = "galltype", column = "type"),
			@Result(property = "title", column = "title"),
			@Result(property = "author", column = "author"),
			@Result(property = "file", column = "pic"),
			@Result(property = "content", column = "content"),
			@Result(property = "hits", column = "hits")
	})
	public List<GallaryDto> selectWorkList(@Param("type") int type, @Param("rowsPerPage") int rowsPerPage, @Param("page") int page);
	
	@Select(SELECT_WORK_LIST_BY_SEARCH_ALL)
	@Results(value = {
			@Result(property = "num", column = "num"),
			@Result(property = "galltype", column = "type"),
			@Result(property = "title", column = "title"),
			@Result(property = "author", column = "author"),
			@Result(property = "file", column = "pic"),
			@Result(property = "content", column = "content"),
			@Result(property = "hits", column = "hits")
	})
	public List<GallaryDto> selectWorkListBySearch(@Param("rowsPerPage") int rowsPerPage, @Param("keyword") String keyword, @Param("page") int page);
	
	@Select(SELECT_WORK_LIST_BY_SEARCH_TITLE)
	@Results(value = {
			@Result(property = "num", column = "num"),
			@Result(property = "galltype", column = "type"),
			@Result(property = "title", column = "title"),
			@Result(property = "author", column = "author"),
			@Result(property = "file", column = "pic"),
			@Result(property = "content", column = "content"),
			@Result(property = "hits", column = "hits")
	})
	public List<GallaryDto> selectWorkListBySearchTitle(@Param("rowsPerPage") int rowsPerPage, @Param("keyword") String keyword, @Param("page") int page);
	
	@Select(SELECT_WORK_LIST_BY_SEARCH_CONTENT)
	@Results(value = {
			@Result(property = "num", column = "num"),
			@Result(property = "galltype", column = "type"),
			@Result(property = "title", column = "title"),
			@Result(property = "author", column = "author"),
			@Result(property = "file", column = "pic"),
			@Result(property = "content", column = "content"),
			@Result(property = "hits", column = "hits")
	})
	public List<GallaryDto> selectWorkListBySearchContent(@Param("rowsPerPage") int rowsPerPage, @Param("keyword") String keyword, @Param("page") int page);
	
	@Select(SELECT_CNT_MOBILE)
	public int selectCntMobile(@Param("type") int type);
	
	@Select(SELECT_CNT_WORK)
	public int selectCntWork(@Param("type") int type);
	
	@Update(UPDATE_MOBILE_HITS)
	public int updateMobileHits(@Param("num") int num);
	
	@Update(UPDATE_WORK_HITS)
	public int updateWorkHits(@Param("num") int num);
}
