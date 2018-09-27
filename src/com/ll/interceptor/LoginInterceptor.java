package com.ll.interceptor;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.ll.bean.User;
import com.ll.service.UserService;

public class LoginInterceptor implements HandlerInterceptor {

	@Override
	public void afterCompletion(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, Exception arg3)
			throws Exception {
		// TODO Auto-generated method stub

	}

	@Override
	public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, ModelAndView arg3)
			throws Exception {
		// TODO Auto-generated method stub

	}

	@Override
	public boolean preHandle(HttpServletRequest req, HttpServletResponse resp, Object arg2) throws Exception {
		UserService userservice;
		System.out.println("进入了preHandle方法！！！！");
		Cookie[] cookies = req.getCookies();
		if (cookies == null) {
			resp.sendRedirect("redirect:login");
		}
		HttpSession session = req.getSession(false);
		String sessionId = session.getId();
		for (Cookie cookie : cookies) {
			if (cookie.getName().equals("JSESSIONID")) {
				if (!cookie.getValue().equals(sessionId)) {
					resp.sendRedirect("redirect:login");
				}
			}
		}
		
		
		return true;
	}

}
