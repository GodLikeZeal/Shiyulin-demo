package com.Zeal.Shiyulin.modules.login.service;


import com.Zeal.Shiyulin.modules.login.pojo.UserLogin;

public interface LoginService {
	//����������ѯ�����û���¼��Ϣ
	UserLogin selectByPrimaryKey(String username)throws Exception;

}
