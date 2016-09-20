package com.mycom.camerainfo.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
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
	
	static final String SELECT_CNT_WORK = "select count(*) from gallary_work";
	
	static final String SELECT_MOBILE_LIST = "select * from (select num, type, title, author, content, pic, ceil(rownum/#{rowsPerPage}) as page from (select * from gallary_mobile where type = #{type} order by num desc)) where page = #{page}";
	
	static final String SELECT_WORK_LIST = "select * from (select num, type, title, author, content, pic, rownum, ceil(rownum/#{rowsPerPage}) as page from "
			+ "(select * from gallary_work order by num desc)) where type = #{type}";
	
	static final String UPDATE_MOBILE_HITS = "update gallary_mobile set hits = NVL2(hits, hits + 1, 1) where num = #{num}";
	
	@Insert(INSERT_MOBILE)
	public int insertMobile(@Param("type") int type, @Param("title") String title, @Param("author") String author, @Param("pic") String pic, @Param("content") String content);
	
	@Insert(INSERT_WORK)
	public int insertWork(@Param("type") int type, @Param("title") String title, @Param("author") String author, @Param("pic") String pic, @Param("content") String content);
	
	@Select(SELECT_MOBILE)
	public GallaryDto selectMobile(@Param("num") int num);
	
	@Select(SELECT_WORK)
	public GallaryDto selectWork(@Param("num") int num);
	
	@Select(SELECT_MOBILE_LIST)
	public List<GallaryDto> selectMobileList(@Param("type") int type, @Param("page") int page, @Param("rowsPerPage") int rowsPerPage);
	
	@Select(SELECT_WORK_LIST)
	public List<GallaryDto> selectWorkList(@Param("type") int type, @Param("rowsPerPage") int rowsPerPage);
	
	@Select(SELECT_CNT_MOBILE)
	public int selectCntMobile(@Param("type") int type);
	
	@Select(SELECT_CNT_WORK)
	public int selectCntWork(@Param("type") int type);
	
	@Update(UPDATE_MOBILE_HITS)
	public int updateMobileHits(@Param("num") int num); 
}
