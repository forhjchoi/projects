package kr.co.hjstore.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import kr.co.hjstore.model.MemberDTO;

@Repository
public interface MemberMapper {
	final String INSERT = "insert into member (email, username, password) values (email=#{email}, username=#{username}, "
			+ "password=#{password})";
	
	final String SELECT = "select * from member where email=#{email}";
	
	final String SELECT_BY_PASS = "select * from member where email=#{email} and password=#{password}";
	
	final String SELECT_LIST = "select * from member";
	
	final String SELECT_LIST_BY_ROW = "select * from (select rownum rnum, email, username, telephone, regdate, zipcode, address, "
			+ "from member) a where a.rnum between #{brow} and #{erow}";
	
	final String SELECT_LIST_BY_ADDR = "select email, username, telephone, regdate, zipcode, address "
			+ "from member where address like '%'||#{address}||'%'";
	
	@Insert(INSERT)
	int insert(MemberDTO memberDTO);
	
	@Select(SELECT)
	@Results(value = {
			@Result(property="email", column="email"),
			@Result(property="username", column="username"),
			@Result(property="password", column="password"),
			@Result(property="telephone", column="telephone"),
			@Result(property="regDate", column="regdate"),
			@Result(property="zipcode", column="zipcode"),
			@Result(property="address", column="address"),
			@Result(property="detail", column="detail")
	})
	MemberDTO select(@Param("email") String email);
	
	@Select(SELECT_BY_PASS)
	@Results(value = {
			@Result(property="email", column="email"),
			@Result(property="username", column="username"),
			@Result(property="password", column="password"),
			@Result(property="telephone", column="telephone"),
			@Result(property="regDate", column="regdate"),
			@Result(property="zipcode", column="zipcode"),
			@Result(property="address", column="address"),
			@Result(property="detail", column="detail")
	})
	MemberDTO selectByPass(@Param("password") String password);
	
	@Select(SELECT_LIST)
	@Results(value = {
			@Result(property="email", column="email"),
			@Result(property="username", column="username"),
			@Result(property="password", column="password"),
			@Result(property="telephone", column="telephone"),
			@Result(property="regDate", column="regdate"),
			@Result(property="zipcode", column="zipcode"),
			@Result(property="address", column="address"),
			@Result(property="detail", column="detail")
	})
	List<MemberDTO> selectList();
	
	@Select(SELECT_LIST_BY_ROW)
	@Results(value = {
			@Result(property="email", column="email"),
			@Result(property="username", column="username"),
			@Result(property="password", column="password"),
			@Result(property="telephone", column="telephone"),
			@Result(property="regDate", column="regdate"),
			@Result(property="zipcode", column="zipcode"),
			@Result(property="address", column="address"),
			@Result(property="detail", column="detail")
	})
	List<MemberDTO> selectListByRow(@Param("bRow") int bRow, @Param("eRow") int eRow);
	
	@Select(SELECT_LIST_BY_ADDR)
	@Results(value = {
			@Result(property="email", column="email"),
			@Result(property="username", column="username"),
			@Result(property="password", column="password"),
			@Result(property="telephone", column="telephone"),
			@Result(property="regDate", column="regdate"),
			@Result(property="zipcode", column="zipcode"),
			@Result(property="address", column="address"),
			@Result(property="detail", column="detail")
	})
	List<MemberDTO> selectListByAddr(@Param("address") String address);
}
