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
	 * ��ת����½ҳ
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("toLogin")
	public String toLogin() throws Exception {
		
		return "login";
	}
	
	/**
	 * �û���½��֤
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
		
		//��½��֤
		if(StringUtils.isEmpty(user_code) || StringUtils.isEmpty(user_password)) {
			
			attr.addFlashAttribute("msg", "�����������û���������");
			return "redirect:toLogin.action";
		} else if(user == null) {
			
			attr.addFlashAttribute("msg", "��������ȷ���û���������");
			return "redirect:toLogin.action";
		} else {
			
			//��֤ͨ��������user��session��
			session.setAttribute("user", user);
			return "redirect:/toHome.action";
		}
	}
	
	/**
	 * �û�ע��
	 * @param session
	 * @return
	 */
	@RequestMapping("logout")
	public String logout(HttpSession session) throws Exception {
		
		//���session
		session.invalidate();
		return "redirect:/toHome.action";
	}
	
	/**
	 * ��ת��ע��ҳ
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("toRegister")
	public String toRegister() throws Exception {
		
		return "register";
	}
	
	/**
	 * �û�ע��
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
			attr.addFlashAttribute("msg", "���˺��Ѵ���");
			return "redirect:/user/toRegister.action";
		} else {
			this.userService.register(user_code, user_name, user_password, user_telephone, user_address);
			attr.addFlashAttribute("msg", "ע��ɹ������¼");
		}
		
		return "redirect:/user/toLogin.action";
	}
	
}
