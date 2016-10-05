package com.mycom.camerainfo;

import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.mycom.camerainfo.service.CommunityService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	@Autowired
	CommunityService commuService;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		model.addAttribute("freeList");
		return "index";
	}
	
	@RequestMapping(value = "/company.do", method = RequestMethod.GET)
	public String company(Model model) {
		return "company";
	}
	
}
