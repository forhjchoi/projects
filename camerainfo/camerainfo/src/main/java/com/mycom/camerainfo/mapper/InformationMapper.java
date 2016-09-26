package com.mycom.camerainfo.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import com.mycom.camerainfo.dto.InformationDto;
import com.mycom.camerainfo.dto.NewsDto;


@Repository
public interface InformationMapper {

	static final String INSERT_CAMERA = "insert into info_camera (num, brand, name, pic, pixel, lens, shutter, shutter_speed, record_type, iso, bluetooth) "
			+ "values (info_camera_seq.NEXTVAL, #{brand}, #{name}, #{pic}, #{pixel}, #{lens}, #{shutter}, #{shutter_speed}, #{record_type}, #{iso}, #{bluetooth})";
	
	static final String INSERT_LENS = "insert into info_lens (num, brand, name, pic, filter_size, weight, max_shot_ratio) values ("
			+ "info_lens_seq.NEXTVAL, #{brand}, #{name}, #{pic}, #{filter_size}, #{weight}, #{max_shot_ratio})";
	
	static final String SELECT_CAMERA = "select * from info_camera where num=#{num}";
	
	static final String SELECT_LENS = "select * from info_lens where num = #{num}";
	
	static final String SELECT_CNT_CAMERA = "select count(*) from info_camera where brand = #{brand}";
	
	static final String SELECT_CNT_LENS = "select count(*) from info_lens where brand = #{brand}";
	
	static final String SELECT_CAMERA_LIST_BY_BRAND = "select * from (select num, name, pic, pixel, lens, shutter, shutter_speed, record_type, iso, bluetooth, ceil(rownum/#{rowsPerPage}) as page from (select * from info_camera where brand = #{brand} order by num desc)) where page = #{page}";
	
	static final String SELECT_LENS_LIST_BY_BRAND = "select * from (select num, name, pic, filter_size, weight, max_shot_ratio, ceil(rownum/#{rowsPerPage}) as page from (select * from info_lens where brand = #{brand} order by num desc)) where page = #{page}";
	
	@Insert(INSERT_CAMERA)
	public int insertCamera(@Param("brand") String brand, @Param("name") String name, @Param("pic") String pic,	@Param("pixel") int pixel, 
			@Param("lens") String lens, @Param("shutter") String shutter, @Param("shutter_speed") String shutter_speed, @Param("record_type") String record_type,
			@Param("iso") String iso, @Param("bluetooth") String bluetooth);
	
	@Insert(INSERT_LENS)
	public int insertLens(@Param("brand") String brand, @Param("name") String name, @Param("pic") String pic, @Param("filter_size") String filterSize, 
			@Param("weight") String weight, @Param("max_shot_ratio") String maxShotRatio);;
	
	@Select(SELECT_CAMERA_LIST_BY_BRAND)
	public List<InformationDto> selectCameraList(@Param("brand") String brand, @Param("page") int page, @Param("rowsPerPage") int rowsPerPage);
	
	@Select(SELECT_LENS_LIST_BY_BRAND)
	public List<InformationDto> selectLensList(@Param("brand") String brand, @Param("page") int page, @Param("rowsPerPage") int rowsPerPage);
	
	@Select(SELECT_CNT_CAMERA)
	public int selectCntCamera(@Param("brand") String brand);
	
	@Select(SELECT_CNT_LENS)
	public int selectCntLens(@Param("brand") String brand);
	
	@Select(SELECT_CAMERA)
	public InformationDto selectCamera(@Param("num") int num);
	
	@Select(SELECT_LENS)
	public InformationDto selectLens(@Param("num") int num); 
}
