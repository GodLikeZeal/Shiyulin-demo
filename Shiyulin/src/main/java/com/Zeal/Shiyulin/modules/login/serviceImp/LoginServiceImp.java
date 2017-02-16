package com.Zeal.Shiyulin.modules.login.serviceImp;


import com.Zeal.Shiyulin.modules.login.mapper.UserLoginMapper;
import com.Zeal.Shiyulin.modules.login.pojo.UserLogin;
import com.Zeal.Shiyulin.modules.login.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;


/**
 * 
 * <p>Title: LoginServiceImp </p>
 * <p>Description: ��¼����Ľӿ�ʵ����</p>
 * <p>Company: </p> 
 * @author Administrator
 * @date 2016��7��27��  ����6:59:34
 */
public class LoginServiceImp implements LoginService {
	@Autowired
	private UserLoginMapper userLoginMapper;

	@Override
	public UserLogin selectByPrimaryKey(String username) throws Exception {
		// �����û�������ѯ�û���Ϣ
		return userLoginMapper.selectByPrimaryKey(username);
	}

	

}
