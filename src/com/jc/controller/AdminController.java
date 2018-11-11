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
	 * 跳转至管理员登陆页
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("toLogin")
	public String toLogin() throws Exception {
		
		return "admin/index";
	}
	
	/**
	 * 管理员登陆操作
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
		
		//登陆验证
		if(StringUtils.isEmpty(admin_code) || StringUtils.isEmpty(admin_password)) {
			
			attr.addFlashAttribute("msg", "请输入账号和密码");
			return "redirect:toLogin.action";
		} else if(admin == null) {
			
			attr.addFlashAttribute("msg", "请输入正确的账号和密码");
			return "redirect:toLogin.action";
		} else {
			
			session.setAttribute("admin", admin);
			return "redirect:/toBackStage.action";
		}
	}
	
}
