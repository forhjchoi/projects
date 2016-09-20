package com.mycom.camerainfo.service;

import java.sql.SQLException;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.mycom.camerainfo.dto.MemberDto;
import com.mycom.camerainfo.mapper.MemberMapper;

@Component
public class MemberService {
		
	@Autowired
	MemberMapper memberMapper;
	@Autowired
	MemberDto memberDto;
	
	public int insert(MemberDto memberDto) throws SQLException {
		return memberMapper.insert(memberDto);		
	}
	
	public MemberDto select(String id, String passwd) throws SQLException {
		if((memberDto = memberMapper.select(id, passwd)) != null) {
			return memberDto;
		} else {
			return null;
		}
	}
	
	public MemberDto selectByPasswd(MemberDto memberDto) throws SQLException {
		return memberMapper.selectPasswd(memberDto.getId());
	}
	
	public MemberDto comparePasswd(MemberDto memberDto, String passwd) throws SQLException {
		if(passwd.equals(memberDto.getPasswd())) {
			return memberDto;
		} else {
			return null;
		}
	}
	
	public MemberDto update(Map map) throws SQLException {
		memberMapper.update(map.get("new_passwd").toString(), map.get("new_passwd2").toString(), map.get("nickname").toString(), map.get("email").toString(), map.get("id").toString());
		return memberMapper.select(map.get("id").toString(), map.get("new_passwd").toString());
	}
}
