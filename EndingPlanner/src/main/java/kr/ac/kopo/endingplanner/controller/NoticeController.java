package kr.ac.kopo.endingplanner.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.ac.kopo.endingplanner.model.Comment;
import kr.ac.kopo.endingplanner.model.Memory;
import kr.ac.kopo.endingplanner.model.Notice;
import kr.ac.kopo.endingplanner.service.NoticeService;


@Controller
@RequestMapping(value="/notice")
public class NoticeController {
	
	@Autowired
	NoticeService noticeService;
	
	final String path="notice/";
	
	@RequestMapping(value="/list")
	String list(Model model) {
		
		List<Notice> list = noticeService.getList();
		
		model.addAttribute("list", list);
		
		return path + "list"; //notice/list
	}
	@RequestMapping("/view")
	String view(int noticeid, Model model) {
		Notice notice = noticeService.getNoticeItem(noticeid);
		
		model.addAttribute("notice", notice);
		
		return path + "view";
	}
}
