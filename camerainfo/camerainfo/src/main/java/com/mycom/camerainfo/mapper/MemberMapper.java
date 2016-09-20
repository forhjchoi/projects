package com.mycom.camerainfo.mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import com.mycom.camerainfo.dto.MemberDto;

@Repository
public interface MemberMapper {

	static final String INSERT = "insert into member (num, id, passwd, passwd2, name, nickname, email, lc, birth, sex) "
			+ "values(member_seq.NEXTVAL, #{id}, #{passwd}, #{passwd2}, #{name}, #{nickname}, #{email}, #{lc}, #{birth}, #{sex})";
	
	static final String SELECT = "select id, name, nickname, email, lc, birth, sex from member where id=#{id} and passwd=#{passwd}";
	
	static final String SELECT_PASSWD_BY_ID = "select passwd2 from member where id=#{id}";
	
	static final String UPDATE = "update member set passwd=#{passwd}, passwd2=#{passwd2}, nickname=#{nickname}, email=#{email} where id=#{id}";
	
	@Insert(INSERT)
	int insert(MemberDto memberDto);
	
	@Select(SELECT)
	@Results(value = {
			@Result(property="id", column="id"),
			@Result(property="name", column="name"),
			@Result(property="nickname", column="nickname"),
			@Result(property="email", column="email"),
			@Result(property="lc", column="lc"),
			@Result(property="birth", column="birth"),
			@Result(property="sex", column="sex")			
	})
	MemberDto select(@Param("id") String id, @Param("passwd") String passwd);
	
	@Select(SELECT_PASSWD_BY_ID)
	@Results(value = {
			@Result(property="passwd2", column="passwd2")			
	})
	MemberDto selectPasswd(@Param("id") String id);
	
	@Update(UPDATE)
	int update(@Param("passwd") String passwd, @Param("passwd2") String passwd2, @Param("nickname") String nickname, @Param("email") String email, @Param("id") String id);
	
}
