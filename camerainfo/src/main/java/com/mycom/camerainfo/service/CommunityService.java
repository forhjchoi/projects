package com.mycom.camerainfo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.mycom.camerainfo.dto.CommunityDto;
import com.mycom.camerainfo.mapper.CommunityMapper;

@Component
public class CommunityService {
	@Autowired
	CommunityMapper communityMapper;
	
	public void insertFreeNoFile(CommunityDto commuDto) {
//		return commuMapper.insertFreeNoFile(commuDto);
		communityMapper.insertFreeNoFile(commuDto.getName(), commuDto.getEmail(), commuDto.getTitle(), commuDto.getContent());
	}
}
