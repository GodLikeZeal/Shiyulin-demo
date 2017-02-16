package com.Zeal.Shiyulin.modules.login.service;


import com.Zeal.Shiyulin.modules.login.pojo.UserLogin;

public interface LoginService {
	//根据主键查询单条用户登录信息
	UserLogin selectByPrimaryKey(String username)throws Exception;

}
