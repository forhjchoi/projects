package com.mycom.camerainfo.controller;

import java.io.File;
import java.io.IOException;
import java.sql.Date;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Collection;
import java.util.HashMap;

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

import com.mycom.camerainfo.dto.GallaryDto;
import com.mycom.camerainfo.service.GallaryService;


@Controller
@MultipartConfig
public class GallaryController {
	
	@Autowired
	GallaryService gallService;

	@RequestMapping(value="/gallary_best.do", method = RequestMethod.GET)
	public String gallaryBest(Model model, @RequestParam("current_page") String page) {
		model.addAttribute("totalCnt", new Integer(gallService.selectCntWork(0)));
		model.addAttribute("current_page", page);
		return "gallary_best";
	}
	
	@RequestMapping(value = "/gallary_work.do", method = RequestMethod.GET)
	public String gallWork(Model model, @RequestParam("current_page") String page, @RequestParam("type") String type) throws SQLException {
		model.addAttribute("totalCnt", new Integer(gallService.selectCntWork(Integer.parseInt(type))));
		model.addAttribute("current_page", page);
		model.addAttribute("type", type);
		model.addAttribute("gallList", gallService.selectWorkList(Integer.parseInt(type), 6));
		
		return "gallary_work";
	}
		
	@RequestMapping(value = "/gallary_mobile.do", method = RequestMethod.GET)
	public String gallMobile(Model model, @RequestParam("current_page") String page, @RequestParam("type") String type) throws SQLException {
		model.addAttribute("totalCnt", new Integer(gallService.selectCntMobile(Integer.parseInt(type))));
		model.addAttribute("current_page", page);
		model.addAttribute("type", type);
		model.addAttribute("gallList", gallService.selectMobileList(Integer.parseInt(type), Integer.parseInt(page), 6));
		
		return "gallary_mobile";
	}
	
	@RequestMapping(value="/gallary_write.do", method = RequestMethod.GET)
	public String gallaryWrite(Model model) {
//		model.addAttribute("gallObj", new GallaryDto());
		return "gallary_writeForm";
	}
	
	@RequestMapping(value = "/gallary_write_ok.do", method = RequestMethod.POST)
	public ModelAndView gallaryWriteOk(Model model, HttpServletRequest request, @RequestParam HashMap<String, String> map) throws SQLException, IOException, ServletException {
		String partName, partValue;
		ServletContext servletContext = request.getSession().getServletContext();
		Collection<Part> parts = request.getParts(); // return되는 request객체의  모든 part를 collection에 배정
		for(Part part : parts) { // collection<Part> parts의 각각의 element들을 enhanced for를 이용해 꺼낸다.
			partName = part.getName(); // String fileName에 현재 part의 이름을 배정
			if(part.getContentType() != null) { // 현재 part의 contenttype이 null이 아니면 (getContentType()은 파일이 아닌 경우에 null을 반환한다)
				partValue = getFilename(part); // getFilename(part)에서 넘어온 filename을 partValue에 배정
				if(partValue != null && ! partValue.isEmpty()) { // partValue가 null이 아니고 ""가 아니라면(length가 0)
					String absolutePath =  servletContext.getRealPath("/WEB-INF/views/upload_gallary");
					// getServletContext()는 ServletContext객체를 반환하고 getRealPath()는 현재 web-application의 realpath를 구한다.
					// realpath = file system을 기준으로 한 경로, virtual path = 현재 web application을 기준으로 하는 경로.????
					part.write(absolutePath + File.separator + partValue);
					map.put("pic", partValue);
				}
			}
		}
		if(gallService.insert(map) > 0) {
			if(map.get("galltype").equals("0")) {
				return new ModelAndView("redirect:/gallary_work.do?current_page=1&type=0");
			} else {
				return new ModelAndView("redirect:/gallary_mobile.do?current_page=1&type=0");
			}						
		} else {
			return null;
		}		
	}
	
	@RequestMapping(value = "/gallary_work_read.do", method = RequestMethod.GET)
	public String gallaryWorkRead(Model model, @RequestParam("gallNum") String gallNum) throws SQLException {
		model.addAttribute("gall", gallService.selectWork(Integer.parseInt(gallNum)));		
		return "gallary_read";
	}
	
	@RequestMapping(value = "/gallary_mobile_read.do", method = RequestMethod.GET)
	public String gallaryMobileRead(Model model, @RequestParam("gallNum") String gallNum) throws SQLException {
		gallService.updateMobileHits(Integer.parseInt(gallNum));
		model.addAttribute("gall", gallService.selectMobile(Integer.parseInt(gallNum)));		
		return "gallary_read";
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
