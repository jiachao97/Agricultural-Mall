package com.jc.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.jc.pojo.Admin;
import com.jc.service.UserService;
import com.jc.utils.StringUtils;

@Controller
@RequestMapping("admin")
public class AdminController {

	@Autowired
	private UserService userService;
	
	/**
	 * ��ת������Ա��½ҳ
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("toLogin")
	public String toLogin() throws Exception {
		
		return "admin/index";
	}
	
	/**
	 * ����Ա��½����
	 * @param admin_code
	 * @param admin_password
	 * @param session
	 * @param attr
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("login")
	public String login(String admin_code,String admin_password,HttpSession session,RedirectAttributes attr) throws Exception {
		
		Admin admin = this.userService.checkAdminLogin(admin_code, admin_password);
		
		//��½��֤
		if(StringUtils.isEmpty(admin_code) || StringUtils.isEmpty(admin_password)) {
			
			attr.addFlashAttribute("msg", "�������˺ź�����");
			return "redirect:toLogin.action";
		} else if(admin == null) {
			
			attr.addFlashAttribute("msg", "��������ȷ���˺ź�����");
			return "redirect:toLogin.action";
		} else {
			
			session.setAttribute("admin", admin);
			return "redirect:/toBackStage.action";
		}
	}
	
}
