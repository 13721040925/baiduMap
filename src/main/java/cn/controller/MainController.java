package cn.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/ice")
public class MainController {
	@RequestMapping("/toshare")
	public String toshare() {
		return "share";
	}
}
