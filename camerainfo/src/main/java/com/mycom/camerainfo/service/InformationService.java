package com.mycom.camerainfo.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Component;

import com.mycom.camerainfo.dto.InformationDto;
import com.mycom.camerainfo.dto.NewsDto;
import com.mycom.camerainfo.mapper.InformationMapper;

@Component
public class InformationService {

//	@Autowired
	InformationMapper infoMapper;
	
	public void setInfoMapper(InformationMapper infoMapper) {
		this.infoMapper = infoMapper;
	}

	public int insert(HashMap<String, String> map) {
		if(map.containsKey("max_shot_ratio")) {
			return infoMapper.insertLens(map.get("brand"), map.get("name"), map.get("pic"), map.get("filter_size"), map.get("weight"), map.get("max_shot_ratio"));
		} else {
			return infoMapper.insertCamera(map.get("brand"), map.get("name"), map.get("pic"), Integer.parseInt(map.get("pixel")), 
					map.get("lens"), map.get("shutter"), map.get("shutter_speed"), map.get("record_type"), map.get("iso"), map.get("bluetooth"));
		}
				
	}
	
	public List<InformationDto> selectCamera(String brand, int page, int rowsPerPage) {
		switch(brand) {
			case "0" :
				brand = "Nikon";
				break;
			case "1" :
				brand = "Canon";
				break;
			case "2" :
				brand = "Samsung";
				break;
		}
		return infoMapper.selectCameraList(brand, page, rowsPerPage);
	}
	
	public List<InformationDto> selectLens(String brand, int page, int rowsPerPage) {
		switch(brand) {
			case "0" :
				brand = "Nikon";
				break;
			case "1" :
				brand = "Canon";
				break;
			case "2" :
				brand = "Samsung";
				break;
		}
		return infoMapper.selectLensList(brand, page, rowsPerPage);
	}
	
	public InformationDto selectCamera(int num) {
		return infoMapper.selectCamera(num);
	}
	
	public InformationDto selectLens(int num) {
		return infoMapper.selectLens(num);
	}
	
	public int selectCameraCnt(String brand) {
		switch(brand) {
		case "0" :
			brand = "Nikon";
			break;
		case "1" :
			brand = "Canon";
			break;
		case "2" :
			brand = "Samsung";
			break;
		}	
		return infoMapper.selectCntCamera(brand);
	}
	
	public int selectLensCnt(String brand) {
		switch(brand) {
		case "0" :
			brand = "Nikon";
			break;
		case "1" :
			brand = "Canon";
			break;
		case "2" :
			brand = "Samsung";
			break;
		}
		return infoMapper.selectCntLens(brand);
	} 
}
