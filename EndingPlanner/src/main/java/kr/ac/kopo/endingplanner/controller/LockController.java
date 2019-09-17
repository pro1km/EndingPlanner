package kr.ac.kopo.endingplanner.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.ac.kopo.endingplanner.model.Lock;
import kr.ac.kopo.endingplanner.service.LockService;

@Controller
public class LockController {

	@Autowired
	LockService service;
	
	@RequestMapping("/list")
	public String list(Model model) {
		List<Lock> list = service.list();
		
		model.addAttribute("list", list);
		
		return "make";
	}
	
	@RequestMapping(value="/add", method=RequestMethod.GET)
	public String add() {
		return "make";
	}
	
	@RequestMapping(value="/add", method=RequestMethod.POST)
	public String add(Lock item) {
		
		service.add(item);
		
		return "redirect:make";
	}
	
}
