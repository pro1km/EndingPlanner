package kr.ac.kopo.endingplanner.controller;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import kr.ac.kopo.endingplanner.util.Pager;
import kr.ac.kopo.endingplanner.util.Result;
import kr.ac.kopo.endingplanner.model.Comment;
import kr.ac.kopo.endingplanner.model.Memory;
import kr.ac.kopo.endingplanner.service.MemoryService;

@Controller
@RequestMapping("/memory")
public class MemoryController {

	@Autowired
	MemoryService memoryService;

	final String path = "memory/";
	String uploadPath = "C:\\image\\";

	@RequestMapping("/list")
	String list(Model model, Pager pager) {
		List<Memory> list = memoryService.list(pager);

		model.addAttribute("list", list);

		return path + "list"; // memory/list;
	}

	@RequestMapping(value = "/add", method = RequestMethod.GET)
	String add() {

		return path + "add";
	}

	@RequestMapping(value = "/add", method = RequestMethod.POST)
	String add(Memory memory, MultipartHttpServletRequest mtfRequest) {
		
		String newFileName = null;
	      MultipartFile mf = mtfRequest.getFile("file");

	        String originFileName = mf.getOriginalFilename();
	        if(originFileName !="") {
	           newFileName = System.currentTimeMillis() + originFileName;

	            try {
	                mf.transferTo(new File(uploadPath, newFileName)); //이 메서드를 통해서 실제로 파일이 uploadPath 경로에 생겨남
	            } catch (IllegalStateException e) {
	                e.printStackTrace();
	            } catch (IOException e) {
	                e.printStackTrace();
	            }
	            
	        }

        memory.setPicture(newFileName);

		memoryService.add(memory);

		return "redirect:list";
	}
		
	@RequestMapping(value = "/update", method = RequestMethod.GET)
	String update(int memid, Model model) {
		
		Memory memory = memoryService.getMemoryItem(memid);
		
		model.addAttribute("memory", memory);

		return path + "update";
	}

	@RequestMapping(value = "/update", method = RequestMethod.POST)
	String update(Memory memory, MultipartHttpServletRequest mtfRequest) {
	      String newFileName = memory.getPicture();
	      
	      MultipartFile mf = mtfRequest.getFile("file");

	        String originFileName = mf.getOriginalFilename();
	        System.out.println("파일명 : "+originFileName);
	        if(originFileName!="" && originFileName!=newFileName) {
	           newFileName = System.currentTimeMillis() + originFileName;

	            try {
	                mf.transferTo(new File(uploadPath, newFileName));
	            } catch (IllegalStateException e) {
	                e.printStackTrace();
	            } catch (IOException e) {
	                e.printStackTrace();
	            }
	        }
	        else if(originFileName=="")
	           newFileName = null;
	        
	    memory.setPicture(newFileName);

		memoryService.update(memory);

		return "redirect:view?memid=" + memory.getMemid();
	}

	@RequestMapping("/delete")
	String delete(int memid) {
		memoryService.delete(memid);
		
		return "redirect:list";
	}
	
	@RequestMapping("/view")
	String view(int memid, Model model) {
		Memory memory = memoryService.getMemoryItem(memid);
		List<Comment> comList = memoryService.getComList(memid);
		
		model.addAttribute("memory", memory);
		model.addAttribute("comList", comList);
		
		return path + "view";
	}
	
	//댓글 작성
	@ResponseBody
	@RequestMapping(value="/addComment", method = RequestMethod.POST)
	Map<String, Object> addComment(Comment comment) {
		Map<String, Object> map = new HashMap<String, Object>();
		Result result = new Result();
		
		if(memoryService.addComment(comment)) {
			result.setSuccess(true);
			result.setMessage("댓글이 작성되었습니다.");
		} else {
			result.setSuccess(false);
			result.setMessage("댓글 작성 실패.");
		}
		
		map.put("result", result);
		
		return map;
	}
	
	//댓글 삭제(AJAX)
	@ResponseBody
	@RequestMapping("/delComment")
	Map<String, Object> delComment(Comment comment) {
		
		Map<String, Object> map = new HashMap<String, Object>();
		Result result = new Result();
		
		if(memoryService.delComment(comment)) {
			result.setSuccess(true);
			result.setMessage("댓글이 삭제되었습니다.");
		} else {
			result.setSuccess(false);
			result.setMessage("댓글이 삭제되었습니다.");
		}
		
		map.put("result", result);
		return map;
		
	}
	
		

}
