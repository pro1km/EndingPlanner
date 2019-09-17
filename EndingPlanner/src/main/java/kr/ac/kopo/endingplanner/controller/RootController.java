package kr.ac.kopo.endingplanner.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.ac.kopo.endingplanner.model.Member;
import kr.ac.kopo.endingplanner.service.UserService;

@Controller
@RequestMapping("/")

public class RootController {
	@Autowired
	UserService us;

	@RequestMapping("/")
	String index() {
		return "index";
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	String login() {
		return "login";
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	String login(Member member, HttpSession session) {
		if (us.login(member)) {
			session.setAttribute("member", member.getId());
		} else {
			System.out.println("로그인 되었습니다.");
		}

		return "redirect:/";
	}

	@RequestMapping("/logout")
	String logout(HttpSession session) {
		session.invalidate();

		return "redirect:/";
	}

	@RequestMapping("/add")
	String add() {
		return "signup/add";
	}

	@RequestMapping("/agree")
	String agree() {
		return "signup/agree";
	}

	@RequestMapping("/intro")
	String intro() {
		return "/intro";
	}

	@RequestMapping("/make")
	String make() {
		return "/make";
	}

	@RequestMapping("/memory")
	String memory() {
		return "redirect:list";
	}

	@RequestMapping("/notice")
	String notice() {
		return "redirect:list";
	}
	
	@RequestMapping("/suc")
	String suc() {
		return "signup/suc";
	}

	@RequestMapping("/mypage")
	String mypage() {
		return "/mypage";
	}
	
	@RequestMapping("/profile")
	String profile() {
		return "/profile";
	}
	
	@RequestMapping("/profile_2")
	String profile_2() {
		return "/profile_2";
	}

	@RequestMapping("/loginOk")
	@ResponseBody
	String loginOk(String id, String password) {
		
		int count = us.loginOk(id, password);
		
		return String.valueOf(count);
	}
}
