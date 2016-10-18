package kr.co.hjstore.service;

import java.sql.SQLException;
import java.util.List;

import kr.co.hjstore.model.OrderItemsDTO;

public interface OrderItemService {
	
	int create(OrderItemsDTO orderItemsDTO) throws SQLException;
	OrderItemsDTO select(OrderItemsDTO orderItemsDTO) throws SQLException;
	List<OrderItemsDTO> selectList(OrderItemsDTO orderItemsDTO) throws SQLException;
	int update(OrderItemsDTO orderItemsDTO) throws SQLException;
	int delete(OrderItemsDTO orderItemsDTO) throws SQLException;
	int getSeqVal();
}
