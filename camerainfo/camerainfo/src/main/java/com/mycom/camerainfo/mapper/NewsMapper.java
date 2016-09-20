package com.mycom.camerainfo.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import com.mycom.camerainfo.dto.NewsDto;

@Repository
public interface NewsMapper {
	
	static final String INSERT_CAMERA = "insert into news_camera (num, title, content, regdate, pic) values (news_seq.NEXTVAL, #{title}, #{content}, #{regdate}, #{pic})";
	
	static final String INSERT_LENS = "insert into news_lens (num, title, content, regdate, pic) values (news_seq.NEXTVAL, #{title}, #{content}, #{regdate}, #{pic})";
	
	static final String SELECT_CAMERA = "select * from news_camera where num=#{num}";
	
	static final String SELECT_LENS = "select * from news_lens where num=#{num}";
	
	static final String SELECT_CNT_CAMERA = "select count(*) from news_camera";	
	
	static final String SELECT_CNT_LENS = "select count(*) from news_lens";
	
	static final String SELECT_CAMERA_LIST = "select * from (select num, title, content, regdate, pic, rownum, ceil(rownum/#{rowsPerPage}) as page from "
			+ "(select * from news_camera order by num desc)) where page = #{page}";
	
	static final String SELECT_LENS_LIST = "select * from (select num, title, content, regdate, pic, rownum, ceil(rownum/#{rowsPerPage}) as page from "
			+ "(select * from news_lens order by num desc)) where page = #{page}";
	
	@Insert(INSERT_CAMERA)
	public int insertCamera(@Param("title") String title, @Param("content") String content, @Param("regdate") String regdate, @Param("pic") String pic);
	
	@Insert(INSERT_LENS)
	public int insertLens(@Param("title") String title, @Param("content") String content, @Param("regdate") String regdate, @Param("pic") String pic);
		
	@Select(SELECT_CAMERA_LIST)
	public List<NewsDto> selectCameraList(@Param("page") int page, @Param("rowsPerPage") int rowsPerPage);
	
	@Select(SELECT_LENS_LIST)
	public List<NewsDto> selectLensList(@Param("page") int page, @Param("rowsPerPage") int rowsPerPage);
	
	@Select(SELECT_CNT_CAMERA)
	public int selectCntCamera();
	
	@Select(SELECT_CNT_LENS)
	public int selectCntLens();
	
	@Select(SELECT_CAMERA)
	public NewsDto selectNewsCamera(@Param("num") int num);
	
	@Select(SELECT_LENS)
	public NewsDto selectNewsLens(@Param("num") int num);
}
