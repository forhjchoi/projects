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
	
	public int insert(CommunityDto commuDto, String referer) { // 커뮤니티 게시물 작성
		switch (referer) {
		case "free" : 
			return communityMapper.insertFree(commuDto); // 자유게시판 글 작성
		default : 
			return 1;
		}			
	}
	
	public int selectCntFree() { // 자유게시판의 글의 수를 구함
		return communityMapper.selectCntFree();
	}
	
	public int selectCntFreeMin() { // 자유게시판의 게시물의 번호 중 가장 작은 번호를 구함
		return communityMapper.selectCntFreeMin();
	}
	
	public List<CommunityDto> selectListFree(int page) { // 요청 페이지에 해당하는 자유게시판의 글 리스트를 반환
		return communityMapper.selectListFree(page);
	}
	
	public CommunityDto selectFree(int num) { // 자유게시판 글 읽기
		return communityMapper.selectFree(num);
	}
	
	public void updateFreeHitsCnt(int idx) { // 자유게시판 글 읽기시 조회수를 올림
		communityMapper.updateFreeHitsCnt(idx);
	}
}
