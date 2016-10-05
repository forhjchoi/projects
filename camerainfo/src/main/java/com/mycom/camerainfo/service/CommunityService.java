package com.mycom.camerainfo.service;

import java.util.List;

import org.springframework.stereotype.Component;

import com.mycom.camerainfo.dto.CommunityDto;
import com.mycom.camerainfo.mapper.CommunityMapper;

@Component
public class CommunityService {
//	@Autowired
	CommunityMapper communityMapper;
	
	public void setCommunityMapper(CommunityMapper communityMapper) {
		this.communityMapper = communityMapper;
	}
	
	public int insertFree(CommunityDto commuDto) {
		if(commuDto.getPic() == null) {
			return communityMapper.insertFree(commuDto);
		} else {
			return communityMapper.insertFreeWithFile(commuDto.getName(), commuDto.getEmail(), commuDto.getTitle(), 
					commuDto.getContent(), commuDto.getPic().getOriginalFilename());
		}
	}
	
	public int selectCntFree() {
		return communityMapper.selectCntFree();
	}
	
	public int selectCntFreeMin() {
		return communityMapper.selectCntFreeMin();
	}
	
	public List<CommunityDto> selectListFree(int page) {
		return communityMapper.selectListFree(page);
	}
	
	public CommunityDto selectFree(int page) {
		return communityMapper.selectFree(page);
	}
	
	
}
