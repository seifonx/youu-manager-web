package com.youu.youu.manager.listener;

import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

public class MySessionListener implements HttpSessionListener {

	@Override
	public void sessionCreated(HttpSessionEvent se) {
		// TODO Auto-generated method stub
		HttpSession httpSession = se.getSession();
		String contextPath = httpSession.getServletContext().getContextPath();
		httpSession.setAttribute("ctp", contextPath);
		System.out.println("项目路径：" + contextPath);
	}

	@Override
	public void sessionDestroyed(HttpSessionEvent se) {
		// TODO Auto-generated method stub
		
	}

}
