package com.youu.youu.manager.controller;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.youu.youu.manager.bean.Ttest;
import com.youu.youu.manager.service.TestService;

@Controller
@RequestMapping("shiro")
public class ShiroController {
	@Autowired
	TestService testService;
    
    @RequestMapping("login")
    public String login(String username,String password) {
        Subject currentUser = SecurityUtils.getSubject();
        if (!currentUser.isAuthenticated()) {
            // 把用户名和密码封装为 UsernamePasswordToken 对象
            UsernamePasswordToken token = new UsernamePasswordToken(username, password);
            token.setRememberMe(true);
            try {
                // 执行登录. 
                currentUser.login(token);
            } 
            catch (AuthenticationException ae) {
                System.out.println("登录失败---》" + ae);
            }
        }
        return "redirect:/list.jsp";
        
    }
    
    @ResponseBody
    @RequestMapping("test")
    public Ttest test123(){
    	Ttest tt = testService.getTest();
		return tt;
    }
    
    
}
