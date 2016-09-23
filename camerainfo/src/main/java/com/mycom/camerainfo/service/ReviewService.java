package com.mycom.camerainfo.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.mycom.camerainfo.dto.ReviewDto;
import com.mycom.camerainfo.mapper.ReviewMapper;

@Component
public class ReviewService {
	
	@Autowired
	ReviewMapper reviewMapper;
	
	public int insert(HashMap<String, String> map) {
		return reviewMapper.insert(Integer.parseInt(map.get("type")), map.get("title"), map.get("content"), map.get("pic"));
	}
	
	public int selectTotalCnt(int type) {
		return reviewMapper.selectTotalCnt(type);
	}
	
	public List<ReviewDto> select(int type, int page, int rowsPerPage) {
		return reviewMapper.select(type, page, rowsPerPage);
	}

}
