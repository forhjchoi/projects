package com.mycom.camerainfo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.mycom.camerainfo.dto.CommunityDto;
import com.mycom.camerainfo.mapper.CommunityMapper;

@Component
public class CommunityService {
	@Autowired
	CommunityMapper commuMapper;
	
//	public int insert(CommunityDto commuDto) {
//		commuMapper.insert(map)
//	}
}
