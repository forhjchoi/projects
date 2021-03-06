package com.mycom.camerainfo.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Component;

import com.mycom.camerainfo.dto.GallaryDto;
import com.mycom.camerainfo.mapper.GallaryMapper;

@Component
public class GallaryService  {
	
	//@Autowired
	GallaryMapper gallaryMapper;	
	
	public void setGallaryMapper(GallaryMapper gallaryMapper) {		
		this.gallaryMapper = gallaryMapper;
	}

	public int insert(HashMap<String, String> map) {
		if(map.get("galltype").equals("0")) {
			return gallaryMapper.insertWork(Integer.parseInt(map.get("type")), map.get("title"), map.get("author"), map.get("pic"), map.get("content"));
		} else {
			return gallaryMapper.insertMobile(Integer.parseInt(map.get("type")),map.get("title"), map.get("author"), map.get("pic"), map.get("content"));
		}		
	}
	
	public GallaryDto selectMobile(int num) {
		return gallaryMapper.selectMobile(num);
	}
	
	public GallaryDto selectWork(int num) {
		return gallaryMapper.selectWork(num);
	}
	
	public List<GallaryDto> selectMobileList(int type, int page, int rowsPerPage) {
		return gallaryMapper.selectMobileList(type, page, rowsPerPage);		
	}
	
	public List<GallaryDto> selectWorkList(int type, int rowsPerPage) {
		return gallaryMapper.selectWorkList(type, rowsPerPage);		
	}
	
	public int selectCntMobile(int type) {
		return gallaryMapper.selectCntMobile(type);		
	}
	
	public int selectCntWork(int type) {
		return gallaryMapper.selectCntWork(type);		
	}
	
	public int updateMobileHits(int num) {
		System.out.println("HI!!!!!!!!!!!!!!!");
		return gallaryMapper.updateMobileHits(num);
	}

}
