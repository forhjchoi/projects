package com.mycom.camerainfo.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class PageNumberingService {

	private static final PageNumberingService pageNumberingManager = new PageNumberingService();
	
	private static final Logger logger = LoggerFactory.getLogger(PageNumberingService.class);
	
	private PageNumberingService(){}
	
	public static PageNumberingService getInstance() {
		return pageNumberingManager;
	}
	
	public int getTotalPage(int total_cnt, int rowsPerPages) {
		int total_pages = 0;
		if((total_cnt % rowsPerPages) == 0) {
			total_pages = total_cnt / rowsPerPages;
		} else {
			total_pages = (total_cnt / rowsPerPages) + 1;
		}
		
		
		return total_pages;
	}
	
	public int getPageBlock(int curPage, int pagePerBlock) {
		int block = 0;
		
		if((curPage % pagePerBlock) == 0) {
			block = curPage / pagePerBlock;
		} else {
			block = (curPage / pagePerBlock) + 1;
		}
		
		return block;
	}
	
	public int getFirstPageInBlock(int block, int pagePerBlock) {
		return ((block - 1) * pagePerBlock + 1);
	}
	
	public int getLastPageInBlock(int block, int pagePerBlock) {
		return (block * pagePerBlock);
	}
}