package com.Zeal.Shiyulin_Explorer.modules.login.controller;

import com.Zeal.Shiyulin_Explorer.modules.login.pojo.AuthUser;
import com.Zeal.Shiyulin_Explorer.modules.login.pojo.AuthUserExample;
import com.Zeal.Shiyulin_Explorer.modules.login.service.UserLoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 * Created by Zeal on 2016/10/17.
 */
@Controller
public class LoginController {
    @Autowired
    private UserLoginService userLoginService;


    //用户登录
    @RequestMapping(value = "/userLogin")
    @ResponseBody
    public int userLogin(HttpServletRequest request)throws Exception {
        int flag = 0;
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String em = "^\\w+([-+.]\\w+)*@\\w+([-.]\\w+)*\\.\\w+([-.]\\w+)*$";
        String ph = "^[1][3578]\\d{9}$";
        if(username.matches(em)){
            //邮箱登录
        }else if(username.matches(ph)){
            //手机号登录
        }else {
            AuthUser authUser = userLoginService.selectByName(username);
            if (username != null && password != null && password != "") {
                if (authUser == null) {
                    flag = 1;                                         //用户不存在
                } else if (password.equals(authUser.getPassword())) {
                    flag = 3;                                           //创建session
                    HttpSession session = request.getSession();
                    session.setAttribute("username", authUser.getName());
                    session.setAttribute("userid", authUser.getId());
                    session.setMaxInactiveInterval(-1);
                } else {
                    flag = 2;                                           //密码不正确
                }

            }
        }
        return flag;
    }

    //用户注册
    @ResponseBody
    @RequestMapping(value = "userRegister",method = RequestMethod.POST)
    public String userRegister(HttpServletRequest request)throws Exception{

        String status;
        String responseStr="";
        String username=request.getParameter("username");
        String password=request.getParameter("password");
        AuthUser authUser=new AuthUser();
        authUser.setName(username);
        authUser.setPassword(password);
        if (username != null && username != "" && password != null && password != "") {
            int count=userLoginService.insert(authUser);
            if(count>0) {
                status = "SUCCESS";
                responseStr = "{\"name\":\"" + authUser.getName() + "\",\"password\":\"" + authUser.getPassword() + "\",\"status\":\"" + status + "\",\"id\":\"" + authUser.getId() + "\"}";
            }

        } else {
                status="ERROR";
                responseStr="{\"status\":\""+status+"\",\"error\":\"阁下人品不好，注册失败！\"}";
        }

        return responseStr;
    }

    //查询用户是否已存在
    @ResponseBody
    @RequestMapping(value = "registration/queryUserExist")
    public int queryUserExist(HttpServletRequest request)throws Exception{
        int flag=0;
        String username=request.getParameter("username");
        AuthUserExample authUserExample=new AuthUserExample();
        authUserExample.or().andNameEqualTo(username);
        int count =userLoginService.countByExample(authUserExample);
        if(count>0){
            flag=1;                    //如果存在，则标记
        }
        return flag;
    }



}
