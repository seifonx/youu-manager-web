package com.youu.youu.manager.shiro;

import java.util.HashSet;

import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.crypto.hash.SimpleHash;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.util.ByteSource;
import org.springframework.beans.factory.annotation.Autowired;

import com.youu.youu.manager.bean.TUser;
import com.youu.youu.manager.service.BackstageUserService;

public class ShiroRealm extends AuthorizingRealm {

	@Autowired
	BackstageUserService bUserService;

	/**
	 * 用户名密码验证
	 */
	@Override
	protected AuthenticationInfo doGetAuthenticationInfo(
			AuthenticationToken token) throws AuthenticationException {
		// 获取token（就是浏览器传的参数），通过currentUser.login(token)过来的
		UsernamePasswordToken uToken = (UsernamePasswordToken) token;
		String username = uToken.getUsername();
		String password = new String(uToken.getPassword());
		// 从数据库中获取用户名和密码
		TUser tUser = bUserService.getManagerByLoginacc(username);
		if (tUser == null) {
			throw new UnknownAccountException("用户不存在");
		}
		// 账户作为盐值
		ByteSource salt = ByteSource.Util.bytes(username);
		SimpleAuthenticationInfo info = null;
		info = new SimpleAuthenticationInfo(tUser.getLoginacct(),
				tUser.getPassword(), salt, getName());
		return info;
	}

	/**
	 * 
	 * @Description (测试，看MD5盐值加密后的结果)
	 * @param args
	 */
	public static void main(String[] args) {
		String hashAl = "MD5";
		Object crObject = "123456";
		Object saltObject = ByteSource.Util.bytes("聂祥");
		Object resultObject = new SimpleHash(hashAl, crObject, saltObject, 6);
		System.out.println(resultObject);
	}

	/**
	 * 角色验证，如何禁止任意前台用户进入后台登录页面？
	 * 现在只做到根据角色获取权限
	 */
	@Override
	protected AuthorizationInfo doGetAuthorizationInfo(
			PrincipalCollection principals) {
		String principal = (String) principals.getPrimaryPrincipal();
//		从数据库中获取该用户所有的角色
		HashSet<String> roles = bUserService.getRoleByManagerId(principal);
		// 这里面的roles就是与filterChainDefinitions属性对应的拦截，名称必须与拦截的名字一致
		SimpleAuthorizationInfo info = new SimpleAuthorizationInfo(roles);
		return info;
	}

}
