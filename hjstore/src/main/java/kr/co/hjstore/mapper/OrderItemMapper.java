package kr.co.hjstore.mapper;

import org.springframework.stereotype.Repository;

@Repository
public class OrderItemMapper {
	
	final String INSERT = "insert into orderitems (oitemno, pno, email, pname, pimage, psize, amount, price) "
			+ "values (orderitem_seq.NEXTVAL, #{pno}, #{email}, #{pname}, #{pimage}, #{psize}, #{amount}, #{price})";
	
	final String SELECT = "select * from product where pno=#{pno}";
	
	final String SELECT_LIST = "select * from orderitems where email=#{email}";
	
	final String UPDATE = "update (select * from orderitems where email=#{email}) set amount=#{amount} where pno=#{pno}";
	
	final String DELETE = "delete from (select * from orderitems where email=#{email}) where pno=#{pno}";
	
	final String GET_SEQ_VALUE = "select last_number from user_sequence where sequence_name='order_seq'";
}
