package kr.co.hjstore.mapper;

import org.springframework.stereotype.Repository;

@Repository
public class ProductMapper {
	
	final String INSERT = "insert into product (pno, name, saler, phone, price, saledate, image, description) values "
			+ "(product_seq.NEXTVAL, #{name}, #{saler}, #{phone}, #{price}, #{saledate}, #{image}, #{description})";
	
	final String SELECT = "select * from product where pno=#{pno}";
	
	final String SELECT_LIST_BY_ROW = "select * from (select rownum rnum, pno, name, saler, phone, price, saledate, image, description "
			+ "from product order by pno desc) a where a.rnum between #{brow} and #{erow}";
	
	final String SELECT_LIST_BY_NAME = "select pno, name, saler, phone, price, saledate, image, description from product "
			+ "where name like '%'||#{name}||'%' order by pno desc";
	
	final String UPDATE = "update product set name=#{name}, saler=#{saler}, phone=#{phone}, price=#{price}, saledate=#{saledate}, "
			+ "image=#{image}, description=#{description} where pno=#{pno}";
	
	final String DELETE = "delete from product where pno=#{pno}";
	
	final String COUNT = "select count(*) from product";
}
