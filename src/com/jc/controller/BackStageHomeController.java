package com.jc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BackStageHomeController {

	/**
	 * ��ת����̨��ҳ
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("toBackStage")
	public String toBackStage() throws Exception {
		
		return "admin/home";
	}
	
}
