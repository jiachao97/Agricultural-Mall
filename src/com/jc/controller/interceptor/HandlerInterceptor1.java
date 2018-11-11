package com.jc.controller.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

public class HandlerInterceptor1 implements HandlerInterceptor{

	/**
	 * 验证用户是否登陆：没有登陆则不放行(return false)，重定向到登陆页面
	 * 				      登陆了则放行(return true)
	 */
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object arg2) throws Exception {

		HttpSession session = request.getSession();
		Object user = session.getAttribute("user");
		
		//验证user是否为空，为空则不放行，重定向到登陆页面
		if(user == null) {
			request.setAttribute("msg", "请您先登陆");
			request.getRequestDispatcher("/user/toLogin.action").forward(request, response);
			//response.sendRedirect(request.getContextPath()+"/user/toLogin.action");
		}
		//不为空则放行
		return true;
	}
	
	@Override
	public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, ModelAndView arg3)
			throws Exception {
		
	}
	
	@Override
	public void afterCompletion(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, Exception arg3)
			throws Exception {
		
	}

}
