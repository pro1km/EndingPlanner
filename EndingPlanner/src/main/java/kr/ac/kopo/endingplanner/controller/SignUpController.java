package kr.ac.kopo.endingplanner.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.ac.kopo.endingplanner.model.Member;
import kr.ac.kopo.endingplanner.service.SignUpService;

@Controller
@RequestMapping("/signup")
public class SignUpController {
	
	@Autowired
	SignUpService sup;
	
	@RequestMapping("/list")
	String data (Model model, HttpSession session, Member item) {
		item.setId((String) session.getAttribute("endingplanner"));
		List<Member> list = sup.list(item);
		model.addAttribute("list", list);
		return "signup/list";
	}
	
	@RequestMapping(value="/add",method=RequestMethod.GET)
	String add() {
		return "signup/add";
	}
	
	@RequestMapping(value="/add",method=RequestMethod.POST)
	String add(Member item) {
		
		
		sup.add(item);
		return "redirect:suc";
	}
	
	@RequestMapping(value="/delete")
	String delete(HttpSession session) {
		String id = (String) session.getAttribute("endingplanner");
		sup.delete(id);
		session.invalidate();
		return "redirect:/";
	}
	
	@RequestMapping(value="/del")
	String del() {
		return "signup/del";
	}
	
	@RequestMapping("/suc")
	String suc() {
		return "signup/suc";
	}
	
	@RequestMapping(value="/idCheck")
	@ResponseBody
	int idCheck(String id) {
		return sup.idCheck(id);
	}
}
