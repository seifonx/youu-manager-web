package com.youu.youu.manager.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
/**
 * 
 * @ClassName DispatchPageController
 * @Description TODO(用于转发页面)
 * @author Thruman
 * @Date 2017年8月11日 下午2:22:59
 * @version 1.0.0
 */
@Controller
public class DispatchPageController {
	
	@RequestMapping("/index.html")
	public String dispatchIndex() {
		return "index";
	}
	

}
