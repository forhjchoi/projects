package kr.co.hjstore.service;

import java.sql.SQLException;
import java.util.List;

import kr.co.hjstore.model.MemberDTO;

public interface MemberService {
	int create(MemberDTO memberDTO) throws SQLException;
	MemberDTO selectOne(MemberDTO memberDTO) throws SQLException;
	MemberDTO selectByPass(MemberDTO memberDTO, int bRow, int eRow) throws SQLException;
	List<MemberDTO> selectList(MemberDTO memberDTO) throws SQLException;
	List<MemberDTO> selectListByAddr(MemberDTO memberDTO) throws SQLException;
	List<MemberDTO> selectListByRow(MemberDTO memberDTO) throws SQLException;
	
}
