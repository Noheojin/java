package com.nej.total;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.nej.dao.MemberDao;
import com.nej.vo.MemberVo;

@Controller
public class MemberController {
	
	@Autowired
	HttpServletRequest request;
	
	@Autowired
	HttpSession	session;
	
	MemberDao member_dao;
	
	public MemberController(MemberDao member_dao) {
		super();
		this.member_dao = member_dao;
	}
	
	//회원목록 
	@RequestMapping("/member/list.do")
	public String list(Model model) {
		
		List<MemberVo> list = member_dao.selectList();
		
		model.addAttribute("list", list);
		
		return "member/member_list";
	}
}
