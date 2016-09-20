package com.mycom.camerainfo.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.type.JdbcType;
import org.springframework.stereotype.Repository;

import com.mycom.camerainfo.dto.ReviewDto;

@Repository
public interface ReviewMapper {
	
	static final String INSERT = "insert into reviews (num, type, title, content, regdate, pic) values "
			+ "(reviews_seq.NEXTVAL, #{type}, #{title}, #{content, jdbcType=VARCHAR}, SYSDATE, #{pic, jdbcType=VARCHAR})";
	
	static final String SELECT = "select * from (select num, title, content, regdate, pic, ceil(rownum/#{rowsPerPage}) as page from "
			+ "(select * from reviews where type = #{type} order by num desc)) where page = #{page}";
	
	static final String SELECT_TOTAL_CNT = "select count(*) from reviews where type=#{type}";
	
	@Insert(INSERT)
	public int insert(@Param("type") int type, @Param("title") String title, @Param("content") String content, @Param("pic") String pic);
	
	@Select(SELECT)
//	@Results(value = {
//			@Result(column = "content", property = "content", jdbcType = JdbcType.VARCHAR, javaType = String.class),
//			@Result(column = "pic", property="pic", jdbcType = JdbcType.VARCHAR, javaType = String.class)
//	})
	public List<ReviewDto> select(@Param("type") int type, @Param("page") int page, @Param("rowsPerPage") int rowsPerPage);
	
	@Select(SELECT_TOTAL_CNT)
	public int selectTotalCnt(@Param("type") int type);

}
