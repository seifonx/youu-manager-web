package com.youu.youu.manager.shiro;

import java.util.LinkedHashMap;

public class FilterChainDefinitionMapBuilder {
	public LinkedHashMap<String, String> buildFilterChainDefinitionMap(){
		LinkedHashMap<String, String> map = new LinkedHashMap<String, String>();
		map.put("/**/*.css", "anon");
		map.put("/**/*.js", "anon");
		map.put("/**/*.png", "anon");
		map.put("/**/*.jpg", "anon");
		map.put("/**/*.eot", "anon");
		map.put("/**/*.woff", "anon");
		map.put("/**/*.ttf", "anon");
		map.put("/**/*.svg", "anon");
		map.put("/manager/login", "anon");
		map.put("/index.html", "roles[manager]");
		map.put("/shiro/login", "anon");
		map.put("/shiro/logout", "logout");
		map.put("/user.jsp", "authc,roles[user]");
		map.put("/admin.jsp", "authc,roles[admin]");
		map.put("/list.jsp", "user");
		map.put("/**", "authc");
		return map;
	}
}
