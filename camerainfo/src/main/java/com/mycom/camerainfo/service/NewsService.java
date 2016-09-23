package com.mycom.camerainfo.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.mycom.camerainfo.dto.NewsDto;
import com.mycom.camerainfo.mapper.NewsMapper;

@Component
public class NewsService {

	@Autowired
	NewsMapper newsMapper;
	
	public int insert(HashMap<String, String> map) {
		if(map.get("type").equals("0")) {
			return newsMapper.insertCamera(map.get("title"), map.get("content"), map.get("regdate"), map.get("pic"));
		} else {
			return newsMapper.insertLens(map.get("title"), map.get("content"), map.get("regdate"), map.get("pic"));
		}
		
	}
	
	public List<NewsDto> select(int type, int page, int rowsPerPage) {
		if(type == 0) {
			return newsMapper.selectCameraList(page, rowsPerPage);
		} else {
			return newsMapper.selectLensList(page, rowsPerPage);
		}
		
	}
	
	public NewsDto selectCamera(int num) {
		return newsMapper.selectNewsCamera(num);
	}
	
	public NewsDto selectLens(int num) {
		return newsMapper.selectNewsLens(num);
	}
	
	public int selectTotalCnt(int type) {
		if(type == 0) {
			return newsMapper.selectCntCamera();
		} else {
			return newsMapper.selectCntLens();
		}
		
	}
}
