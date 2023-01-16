package kr.co.jhta.springboot10.control;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.jhta.springboot10.dto.BoardDTO;
import kr.co.jhta.springboot10.service.BoardService;
import kr.co.jhta.springboot10.util.PageUtil;
import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping("/board")
public class BoardController {
	
	@Autowired
	BoardService service;
	
	@GetMapping("/list") //  @RequestParam(name = "파라미터명", defaultValue = "생략시 기본값")int 변수명
	public String list(Model model, @RequestParam(name = "cp", defaultValue = "1")int currentPage) {
		int totalNumber = service.getTotal();
		// 페이지당 게시물 수
		int recordPerPage = 10;
		// 												  총페이지수 ,	  한페이지당 수, 	현재페이지 몇페이지
		Map<String, Object> map = PageUtil.getPageData(totalNumber, recordPerPage, currentPage);
		int startNo = (int)map.get("startNo");
		int endNo = (int)map.get("endNo");
		List<BoardDTO> list = service.selectAll(startNo,endNo);
		log.info("list >>>>>>>>>>>>>>> : " + list);
		model.addAttribute("list", list);
		model.addAttribute("map", map);
		
		return "board/list";
	}
	
	@GetMapping("/write")
	public String writeForm() {
		return "board/writeForm";
	}
	
	@PostMapping("/write")
	public String writeOk(@ModelAttribute("dto")BoardDTO dto,HttpServletRequest req) {
		String ip = req.getRemoteAddr();
		dto.setIp(ip);
		service.add(dto);
		
		return "redirect:/board/list";
	}
	
	@GetMapping("/detail")
	public String detail(@RequestParam("bno")int bno,Model model) {
		model.addAttribute("dto", service.selectOne(bno));
		return "board/detail";
	}
	
	@GetMapping("modify")
	public String modifyForm(@RequestParam("bno")int bno,Model model) {
		model.addAttribute("dto",service.selectOne(bno));
		return "board/modifyForm";
	}
	
	@PostMapping("/modify")
	public String modifyOk(@ModelAttribute("dto")BoardDTO dto) {
		service.updateOne(dto);
		return "redirect:/board/list";
	}
	
	@GetMapping("/delete")
	public String deleteOne(@RequestParam("bno")int bno) {
		service.deleteOne(bno);
		return "redirect:/board/list";
	}

}
