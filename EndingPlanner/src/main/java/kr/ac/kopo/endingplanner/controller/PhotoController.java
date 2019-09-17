package kr.ac.kopo.endingplanner.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.ac.kopo.endingplanner.model.Lock;
import kr.ac.kopo.endingplanner.model.Photo;
import kr.ac.kopo.endingplanner.service.LockService;
import kr.ac.kopo.endingplanner.service.PhotoService;

@Controller
public class PhotoController {

	@Autowired
	PhotoService service;
	
	@RequestMapping("/list2")
	public String list(Model model) {
		List<Photo> list = service.list();
		
		model.addAttribute("list", list);
		
		return "make";
	}
	
	@RequestMapping(value="/add2", method=RequestMethod.GET)
	public String add() {
		return "make";
	}
	
	@RequestMapping(value="/add2", method=RequestMethod.POST)
	public String add(Photo item) {
		
		service.add(item);
		
		return "redirect:make";
	}
	
}
