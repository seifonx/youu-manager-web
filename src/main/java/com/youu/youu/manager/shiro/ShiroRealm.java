package com.youu.youu.manager.shiro;

import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.crypto.hash.SimpleHash;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.util.ByteSource;

public class ShiroRealm extends AuthorizingRealm {

    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {
        //获取token（就是浏览器传的参数），通过currentUser.login(token)过来的
        UsernamePasswordToken uToken = (UsernamePasswordToken) token;
        String username = uToken.getUsername();
        if ("unknown".equals(username)) {
            throw new UnknownAccountException("用户不存在");
        }
        ByteSource salt = ByteSource.Util.bytes("thruman");
        SimpleAuthenticationInfo info = null ;// new SimpleAuthenticationInfo("thruman", "ab494cf7106503071f6b7636b7f31379", getName());
        info = new SimpleAuthenticationInfo("thruman", "3238255b8f23404f991163fead11da0c", salt, getName());
        return info;
    }
    public static void main(String[] args) {
        String hashAl = "MD5";
        Object crObject = "123456";
        Object saltObject = ByteSource.Util.bytes("thruman");
        Object resultObject = new SimpleHash(hashAl, crObject, saltObject, 6);
        System.out.println(resultObject);
    }
	@Override
	protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection arg0) {
		return null;
	}

}
