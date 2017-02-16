package com.Zeal.Shiyulin.modules.login.controller;

import com.Zeal.Shiyulin.modules.login.pojo.UserLogin;
import com.Zeal.Shiyulin.modules.login.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@Controller
public class LoginRegisterController {
	
	@Autowired
	private LoginService loginService;

	//用户登录
	@ResponseBody
	@RequestMapping(value="/LoginSystem",method={RequestMethod.GET, RequestMethod.POST})
	public int LoginSystem(HttpServletRequest request, HttpServletResponse response) throws Exception{
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		int flag=0;      //初始为0，表示用户名或者密码为空
		response.setHeader("Access-Control-Allow-Origin", "*");
		if(username!=null||!username.equals("")||password!=null||!password.equals("")){
			UserLogin userLogin=loginService.selectByPrimaryKey(username);
			if(userLogin==null){
				flag=1;  //为1表示该用户不存在
			}else if(password.equals(userLogin.getPassword())){
				flag=3;  //为2表示密码不正确
				HttpSession session=request.getSession();
				session.setAttribute("username", username);
				session.setAttribute("userid", userLogin.getUserid());
				session.setAttribute("roleid", userLogin.getRoleid());
				session.setMaxInactiveInterval(0);  //设置session的超时时间，为0表示永远不超时
			}else{
				flag=2;
			}
		}
		return flag;
		}
}
