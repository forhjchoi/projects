package com.mycom.camerainfo.controller;

import java.sql.SQLException;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.mycom.camerainfo.dto.MemberDto;
import com.mycom.camerainfo.service.MemberService;

@Controller
public class MemberController {

	@Autowired
	MemberService memberService;
	
	@RequestMapping(value="/join.do", method = RequestMethod.GET)
	public String join(Model model) {
		model.addAttribute("memberDto", new MemberDto());
		return "join";
	}
	
	@RequestMapping(value="/join_ok.do", method = RequestMethod.POST)
	public String joinOk(Model model, MemberDto memberDto) throws SQLException {
		memberService.insert(memberDto);
		return "join_ok";
	}
	
	@RequestMapping(value="/login.do", method = RequestMethod.GET)
	public String login(Model model) throws SQLException {
		model.addAttribute("first", "first");
		return "login";
	}
	
	@RequestMapping(value="/login_ok.do", method = RequestMethod.POST)
	public String loginOk(Model model, HttpServletRequest request, @RequestParam("id") String id, @RequestParam("passwd") String passwd) throws SQLException {
		HttpSession session = request.getSession();
		if(memberService.select(id, passwd) == null) {
			model.addAttribute("first", null);
			return "login";
		} else {
			session.setAttribute("memberInfo", memberService.select(id, passwd));
			return "index";
		}		
	}
	
	@RequestMapping(value="/checkPasswd.do", method = RequestMethod.GET)
	public String checkPasswd(Model model, HttpServletRequest request) throws SQLException {

		return "checkPasswd";
	}
	
	@RequestMapping(value="/memberModify.do", method=RequestMethod.POST)
	public String memberModify(Model model, HttpServletRequest request, @RequestParam("passwd") String passwd) throws SQLException {
		memberService.comparePasswd((MemberDto) request.getSession().getAttribute("memberInfo"), passwd);
		return "memberModify";
	}
	
	@RequestMapping(value = "/memberModify_ok.do", method = RequestMethod.POST)
	public String memberModifyOk(Model model, HttpServletRequest request, @RequestParam HashMap<String, String> map) throws SQLException {
		if((memberService.update(map) != null)) {
			request.getSession().setAttribute("memberInfo", memberService.update(map));
			return "memberModify";
		} else {
			return null;
		}
	}
	
	@RequestMapping(value="/logout.do", method = RequestMethod.GET)
	public String logout(Model model, MemberDto memberDto) throws SQLException {
		return "logout";
	}
	
	@RequestMapping(value="/emailCheck", method = RequestMethod.POST)
	public void emailCheck(Model model, MemberDto memberDto) throws SQLException {
		
	}
	
	@RequestMapping(value="/find_id.do", method = RequestMethod.GET)
	public String findId(Model model) throws SQLException {
		return "find_id";
	}
	
	@RequestMapping(value="/find_id_ok.do", method=RequestMethod.POST)
	public String findIdOk(Model model) throws SQLException {
		return "find_id_ok";
	}
	
}
