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

	public int insert(GallaryDto gallDto) {
		if(gallDto.getType() == 0) {
			return gallaryMapper.insertWork(gallDto.getType(), gallDto.getTitle(), gallDto.getAuthor(), gallDto.getPic().getOriginalFilename(), gallDto.getContent());
		} else {
			return 0;
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
	
	public List<GallaryDto> selectWorkList(int type, int rowsPerPage, int page) {
		return gallaryMapper.selectWorkList(type, rowsPerPage, page);		
	}
	
	public int selectCntMobile(int type) {
		return gallaryMapper.selectCntMobile(type);		
	}
	
	public int selectCntWork(int type) {
		return gallaryMapper.selectCntWork(type);		
	}
	
	public int updateMobileHits(int num) {
		return gallaryMapper.updateMobileHits(num);
	}
	
	public int updateWorkHits(int num) {
		return gallaryMapper.updateWorkHits(num);
	}
	
	public List<GallaryDto> selectWorkListBySearch(int rowsPerPage, int type, String keyword, int page) {
		switch(type) {
		case 0 :
			return gallaryMapper.selectWorkListBySearch(rowsPerPage, keyword, page);
		case 1 :
			return gallaryMapper.selectWorkListBySearchTitle(rowsPerPage, keyword, page);
		case 2 : 
			return gallaryMapper.selectWorkListBySearchContent(rowsPerPage, keyword, page);
		default :
			return null;
		}		
	}
}
