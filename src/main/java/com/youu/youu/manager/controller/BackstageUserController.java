package com.youu.youu.manager.controller;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;

import com.youu.youu.manager.bean.TUser;
import com.youu.youu.manager.service.BackstageUserService;

@Controller
@RequestMapping("/manager")
public class BackstageUserController {
	@Autowired
	BackstageUserService bUserService;

	@RequestMapping("/login")
	private String login(TUser tUser) {
		String loginacct = tUser.getLoginacct();
		String password = tUser.getPassword();
		if (StringUtils.isEmpty(password) && StringUtils.isEmpty(loginacct)) {
			// 输入不对
			return "redirect:/login.jsp";
		}
		Subject currentUser = SecurityUtils.getSubject();
		// 把用户名和密码封装为 UsernamePasswordToken 对象
		UsernamePasswordToken token = new UsernamePasswordToken(loginacct,
				password);
		// token.setRememberMe(true);
		try {
			// 执行登录.
			currentUser.login(token);
		} catch (AuthenticationException ae) {
			System.out.println("登录失败---》" + ae);
			return "redirect:/login.jsp";
		}
		return "redirect:/index.html";

	}
}
