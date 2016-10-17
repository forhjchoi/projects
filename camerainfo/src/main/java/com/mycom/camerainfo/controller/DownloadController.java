package com.mycom.camerainfo.controller;

import java.io.File;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.BeansException;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class DownloadController implements ApplicationContextAware {
	private WebApplicationContext context = null;
	
	@RequestMapping(value = "download.do", method = RequestMethod.GET)
	public ModelAndView download(HttpServletRequest request, @RequestParam("filename") String fileName) {
		
		ServletContext servletContext = request.getSession().getServletContext();
		String path = servletContext.getRealPath("/WEB-INF/views/upload_commu");
		String fullPath = path + File.separator + fileName;
		File file = new File(fullPath);
		
		return new ModelAndView("downloadService", "downloadFile", file);
	}
	
	@Override
	public void setApplicationContext(ApplicationContext arg0) throws BeansException {
		this.context = (WebApplicationContext) arg0;
	}
}
