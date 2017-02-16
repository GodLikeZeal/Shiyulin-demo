package com.Zeal.Shiyulin_Explorer.modules.zd.controller;

import com.Zeal.Shiyulin_Explorer.modules.file.service.FileService;
import com.Zeal.Shiyulin_Explorer.modules.login.pojo.AuthUser;
import com.Zeal.Shiyulin_Explorer.modules.login.service.UserLoginService;
import com.Zeal.Shiyulin_Explorer.modules.zd.pojo.ZdFileType;
import com.Zeal.Shiyulin_Explorer.modules.zd.pojo.ZdFileTypeExample;
import com.Zeal.Shiyulin_Explorer.modules.zd.service.ZdService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * Created by Zeal on 2016/10/18.
 */
@Controller
public class TransferController {

    @Autowired
    private ZdService zdService;

    @Autowired
    private FileService fileService;

    @Autowired
    private UserLoginService userLoginService;

    //跳转到index页面
    @RequestMapping(value = "/index")
    public String toIndex(){
        return "index";
    }

    //跳转到file_up页面
    @RequestMapping(value = "/file_up")
    public String toFile_up(HttpServletRequest request,Model model){
        ZdFileTypeExample example=new ZdFileTypeExample();
        List<ZdFileType> list=zdService.selectByExample(example);
        model.addAttribute("FileType",list);
        return "file_up";
    }
    //跳转到file_command页面
    @RequestMapping(value = "/file_command")
    public String toFile_command(HttpServletRequest request,Model model){

        return "file_command";
    }

    //跳转到registration页面
    @RequestMapping(value = "/registration")
    public String toRegistration(){
        return "registration";
    }
    //跳转到login页面
    @RequestMapping(value = "/login")
    public String toLogin(){
        return "login";
    }

    //注销跳转到login页面
    @RequestMapping(value = "/signout")
    public String toSignout(HttpServletRequest request){
        request.getSession().invalidate();
        return "login";
    }
    //跳转到文件视图浏览界面
    @RequestMapping(value = "/fileview" )
    public String toMusic_add(HttpServletRequest request){
        return "file";
    }

    @RequestMapping(value = "/selectFM/{type}/{id}" )
    public String toSelectFM(HttpServletRequest request,@PathVariable("type") String type,@PathVariable("id") String id){
        return "selectFM";
    }

    @RequestMapping(value = "/person/{userid}" )
    public String toProfile(HttpServletRequest request,Model model,@PathVariable("userid")Long userid)throws Exception{
        AuthUser authUser=userLoginService.getAuthUserById(userid);
        model.addAttribute("user",authUser);
        return "profile";
    }
}
