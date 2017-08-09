<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://shiro.apache.org/tags" prefix="shiro" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
    list页面
    <shiro:hasRole name="admin">欢迎thruman用户</shiro:hasRole>
    <a href="/youu-manager-web/shiro/logout">logout</a>
    <a href="/youu-manager-web/user.jsp">user</a>
    <a href="/youu-manager-web/admin.jsp">admin</a>
</body>
</html>