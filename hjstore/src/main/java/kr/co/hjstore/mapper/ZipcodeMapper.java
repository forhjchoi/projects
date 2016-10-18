package kr.co.hjstore.mapper;

import org.springframework.stereotype.Repository;

@Repository
public class ZipcodeMapper {
	
	final String COUNT = "select count(*) from zipcode_road where road like '%'||#{road}||'%'";
	
	final String SELECT_LIST_BY_ROW = "select * from (select rownum rnum, zipcode, sido, gugun, road, bldg, bldgname from "
			+ "zipcode_road where road like '%'||#{road}||'%') a where a.rnum between #{brow} and #{erow}";
}
