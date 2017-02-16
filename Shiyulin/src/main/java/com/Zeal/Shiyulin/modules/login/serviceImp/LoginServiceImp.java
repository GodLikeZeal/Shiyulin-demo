package com.Zeal.Shiyulin.modules.login.serviceImp;


import com.Zeal.Shiyulin.modules.login.mapper.UserLoginMapper;
import com.Zeal.Shiyulin.modules.login.pojo.UserLogin;
import com.Zeal.Shiyulin.modules.login.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;


/**
 * 
 * <p>Title: LoginServiceImp </p>
 * <p>Description: 登录服务的接口实现类</p>
 * <p>Company: </p> 
 * @author Administrator
 * @date 2016年7月27日  下午6:59:34
 */
public class LoginServiceImp implements LoginService {
	@Autowired
	private UserLoginMapper userLoginMapper;

	@Override
	public UserLogin selectByPrimaryKey(String username) throws Exception {
		// 根据用户名来查询用户信息
		return userLoginMapper.selectByPrimaryKey(username);
	}

	

}
