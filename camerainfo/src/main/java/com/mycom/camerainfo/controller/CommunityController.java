package com.mycom.camerainfo.controller;


import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.servlet.annotation.MultipartConfig;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.mycom.camerainfo.dto.CommunityDto;
import com.mycom.camerainfo.service.CommunityService;

@Controller
@MultipartConfig
public class CommunityController {
	
	@Autowired
	CommunityService commuService;
	@Autowired
	CommunityDto commuDto;

	@RequestMapping(value = "/commu_free.do", method = RequestMethod.GET)
	public String commuFree(Model model, @RequestParam("current_page") String currentPage) {
		model.addAttribute("current_page", currentPage);
		model.addAttribute("totalCnt", new Integer(commuService.selectCntFree()));
		model.addAttribute("freeList", commuService.selectListFree(Integer.parseInt(currentPage)));
		
		return "commu_free";
	}
	
	@RequestMapping(value = "/commu_free_write.do", method = RequestMethod.GET)
	public String commuFreeWrite(Model model) {
		model.addAttribute("current_page", "1");
		model.addAttribute("communityDto", new CommunityDto());
		return "commu_free_writeForm";
	}
	
	@RequestMapping(value = "/commu_free_read.do", method = RequestMethod.GET)
	public String commuFreeRead(Model model, @RequestParam("num") String num) {
		model.addAttribute("maxCnt", new Integer(commuService.selectCntFree()));
		model.addAttribute("minCnt", new Integer(commuService.selectCntFreeMin()));
		commuService.updateFreeHitsCnt(Integer.parseInt(num));
		model.addAttribute("article", commuService.selectFree(Integer.parseInt(num)));
		
		return "commu_free_read";
	}
	
	@RequestMapping(value = "/commu_edit.do", method = RequestMethod.GET)
	public String commuFreeEdit(Model model, @RequestParam("num") String num, 
			@RequestHeader(value = "referer", required = false) String referer) {
		switch (getRefererUrl(referer)) {
			case "free" : 
				model.addAttribute("communityDto", commuService.selectFree(Integer.parseInt(num)));
		}
		
		return "commu_free_editForm";
	}
	
	@RequestMapping(value = "/commu_qna.do", method = RequestMethod.GET)
	public String commuQna(Model model) {
		return "commu_qna";
	}
	
	@RequestMapping(value = "/commu_data.do", method = RequestMethod.GET)
	public String commuData(Model model) {
		return "commu_data";
	}
	
	@RequestMapping(value = "/commu_tips.do", method = RequestMethod.GET) 
	public String commuTips(Model model) {
		return "commu_tips";
	}
	
	@RequestMapping(value = "/commu_write_ok", method = RequestMethod.POST)
	public ModelAndView commuFreeWriteOk(Model model, @ModelAttribute CommunityDto communityDto,
			@RequestHeader(value = "referer", required = false) String referer, @RequestParam("current_page") String currentPage) {
		
		commuService.insert(communityDto, getRefererUrl(referer));		
		model.addAttribute("current_page", currentPage);
		switch(getRefererUrl(referer)) {
		case "free" : 
			return new ModelAndView("redirect:/commu_free.do");
		default : 
			return null;
		}
		
	}
	
	public String getRefererUrl(String referer) {
		String url = referer.substring(33);
		List<String> list = new ArrayList<String>(Arrays.asList(url.split("_")));
		url = list.get(1);
		return url;
	}
}
