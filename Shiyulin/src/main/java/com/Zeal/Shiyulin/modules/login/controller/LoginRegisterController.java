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

	//�û���¼
	@ResponseBody
	@RequestMapping(value="/LoginSystem",method={RequestMethod.GET, RequestMethod.POST})
	public int LoginSystem(HttpServletRequest request, HttpServletResponse response) throws Exception{
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		int flag=0;      //��ʼΪ0����ʾ�û�����������Ϊ��
		response.setHeader("Access-Control-Allow-Origin", "*");
		if(username!=null||!username.equals("")||password!=null||!password.equals("")){
			UserLogin userLogin=loginService.selectByPrimaryKey(username);
			if(userLogin==null){
				flag=1;  //Ϊ1��ʾ���û�������
			}else if(password.equals(userLogin.getPassword())){
				flag=3;  //Ϊ2��ʾ���벻��ȷ
				HttpSession session=request.getSession();
				session.setAttribute("username", username);
				session.setAttribute("userid", userLogin.getUserid());
				session.setAttribute("roleid", userLogin.getRoleid());
				session.setMaxInactiveInterval(0);  //����session�ĳ�ʱʱ�䣬Ϊ0��ʾ��Զ����ʱ
			}else{
				flag=2;
			}
		}
		return flag;
		}
}
