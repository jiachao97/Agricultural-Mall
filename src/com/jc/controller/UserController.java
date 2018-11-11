package com.jc.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.jc.pojo.User;
import com.jc.service.UserService;
import com.jc.utils.StringUtils;

@Controller
@RequestMapping("user")
public class UserController {

	@Autowired
	private UserService userService;
	
	/**
	 * 跳转至登陆页
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("toLogin")
	public String toLogin() throws Exception {
		
		return "login";
	}
	
	/**
	 * 用户登陆验证
	 * @param user_code
	 * @param user_password
	 * @param session
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("login")
	public String login(String user_code,String user_password,HttpSession session,RedirectAttributes attr) throws Exception {
		
		User user = this.userService.checkLogin(user_code, user_password);
		
		//登陆验证
		if(StringUtils.isEmpty(user_code) || StringUtils.isEmpty(user_password)) {
			
			attr.addFlashAttribute("msg", "请输入您的用户名和密码");
			return "redirect:toLogin.action";
		} else if(user == null) {
			
			attr.addFlashAttribute("msg", "请输入正确的用户名和密码");
			return "redirect:toLogin.action";
		} else {
			
			//验证通过，保存user到session中
			session.setAttribute("user", user);
			return "redirect:/toHome.action";
		}
	}
	
	/**
	 * 用户注销
	 * @param session
	 * @return
	 */
	@RequestMapping("logout")
	public String logout(HttpSession session) throws Exception {
		
		//清空session
		session.invalidate();
		return "redirect:/toHome.action";
	}
	
	/**
	 * 跳转至注册页
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("toRegister")
	public String toRegister() throws Exception {
		
		return "register";
	}
	
	/**
	 * 用户注册
	 * @param user_code
	 * @param user_name
	 * @param user_password
	 * @param user_telephone
	 * @param user_address
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("register")
	public String register(String user_code,String user_name,String user_password,
				String user_telephone,String user_address,RedirectAttributes attr) throws Exception {
		
		if(this.userService.isExist(user_code)) {
			attr.addFlashAttribute("msg", "该账号已存在");
			return "redirect:/user/toRegister.action";
		} else {
			this.userService.register(user_code, user_name, user_password, user_telephone, user_address);
			attr.addFlashAttribute("msg", "注册成功，请登录");
		}
		
		return "redirect:/user/toLogin.action";
	}
	
}
