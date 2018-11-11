package com.jc.controller.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

public class HandlerInterceptor1 implements HandlerInterceptor{

	/**
	 * ��֤�û��Ƿ��½��û�е�½�򲻷���(return false)���ض��򵽵�½ҳ��
	 * 				      ��½�������(return true)
	 */
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object arg2) throws Exception {

		HttpSession session = request.getSession();
		Object user = session.getAttribute("user");
		
		//��֤user�Ƿ�Ϊ�գ�Ϊ���򲻷��У��ض��򵽵�½ҳ��
		if(user == null) {
			request.setAttribute("msg", "�����ȵ�½");
			request.getRequestDispatcher("/user/toLogin.action").forward(request, response);
			//response.sendRedirect(request.getContextPath()+"/user/toLogin.action");
		}
		//��Ϊ�������
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
