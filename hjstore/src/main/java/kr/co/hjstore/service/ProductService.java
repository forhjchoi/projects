package kr.co.hjstore.service;

import java.sql.SQLException;
import java.util.List;

import kr.co.hjstore.model.ProductDTO;

public interface ProductService {

	int create(ProductDTO productDTO) throws SQLException;
	ProductDTO select(ProductDTO productDTO) throws SQLException;
	List<ProductDTO> selectList(ProductDTO productDTO) throws SQLException;
	List<ProductDTO> selectListByRow(ProductDTO productDTO) throws SQLException;
	List<ProductDTO> selectListByName(ProductDTO productDTO) throws SQLException;
	int update(ProductDTO productDTO) throws SQLException;
	int delete(ProductDTO productDTO) throws SQLException;
	int count() throws SQLException;
}
