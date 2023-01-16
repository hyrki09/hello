package kr.co.jhta.springboot10.control;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class HomeController {

	@RequestMapping("/home")
	public String hello() {
		log.info(">>>>>>>>>>>>>>>>> : logger");
		return "home";
	}
	
}
