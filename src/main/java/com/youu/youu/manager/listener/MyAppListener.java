package com.youu.youu.manager.listener;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

/**
 * Servlet启动初始化监听器
 * @ClassName MyAppListener
 * @Description TODO(这里用一句话描述这个类的作用)
 * @author Seifon
 * @Date 2017年7月4日 下午7:44:48
 * @version 1.0.0
 */
public class MyAppListener implements ServletContextListener {

	public void contextDestroyed(ServletContextEvent sce) {
		ServletContext servletContext = sce.getServletContext();
        servletContext.setAttribute("ctp", servletContext.getContextPath());
		
	}

	public void contextInitialized(ServletContextEvent arg0) {
		// TODO Auto-generated method stub
		
	}


}
