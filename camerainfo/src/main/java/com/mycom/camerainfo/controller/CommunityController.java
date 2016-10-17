package com.mycom.camerainfo.controller;


import java.io.File;
import java.io.IOException;
import java.util.Collection;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.Part;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
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
	
	@RequestMapping(value = "/commu_free_edit.do", method = RequestMethod.GET)
	public String commuFreeEdit(Model model, @RequestParam("num") String num) {
		model.addAttribute("communityDto", commuService.selectFree(Integer.parseInt(num)));
//		model.addAttribute("communityDto", commuDto);
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
	
	@RequestMapping(value = "/commu_free_write_ok", method = RequestMethod.POST)
	public ModelAndView commuFreeWriteOk(Model model, HttpServletRequest request, @ModelAttribute CommunityDto communityDto) throws ServletException, IOException {
		String partName, partValue;
		ServletContext servletContext = request.getSession().getServletContext();
		Collection<Part> parts = request.getParts();
		for(Part part : parts) {
			partName = part.getName();
			if(part.getContentType() != null) {
				partValue = getFilename(part);
				if(partValue != null && !partValue.isEmpty()) {
					String absolutePath = servletContext.getRealPath("/WEB-INF/views/upload_commu");
					part.write(absolutePath + File.separator + partValue);					
				}
			}
		}
		commuService.insertFree(communityDto);
		
		return new ModelAndView("redirect:/commu_free.do");
	}
	
	private String getFilename(Part part) { // part의 filename알아내기
    	String contentDispositionHeader = part.getHeader("content-disposition");
    	// part.getHeader(헤더명). 매개변수로 넘어 온 part의 header를 가져온다. 헤더명에 해당하는 헤더가 없는 경우에는 null반환    	
    	String[] splitedContentDisposition = contentDispositionHeader.split(";");
    	// contentDispositionHeader의 헤더 정보에서 ;를 기준으로 잘라 splitedContentDisposition에 배정
    	for(String cd : splitedContentDisposition) {
			if(cd.trim().startsWith("filename")) {
				// 잘라온 헤더정보를 하나씩 if문의 조건과 비교한다. trim()으로 공백을 제거하고, filename으로 시작하는 헤더가 있는지 검사
				return cd.substring(cd.indexOf('=') + 1).trim().replace("\"", "");
				// 있다면 filename으로 시작하는 헤더 정보에서 =문자를 기준으로 +1 한 자리부터 공백을 제거하고 \문자를 지운 후 반환한다.
			}
		}
		return null;
    }
}
