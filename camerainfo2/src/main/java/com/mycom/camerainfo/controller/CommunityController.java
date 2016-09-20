package com.mycom.camerainfo.controller;


import javax.servlet.annotation.MultipartConfig;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@MultipartConfig
public class CommunityController {

	@RequestMapping(value = "/commu_free.do", method = RequestMethod.GET)
	public String home(Model model) {		
		return "commu_free";
	}
}
