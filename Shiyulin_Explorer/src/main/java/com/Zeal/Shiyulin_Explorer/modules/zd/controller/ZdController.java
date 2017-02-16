package com.Zeal.Shiyulin_Explorer.modules.zd.controller;

import com.Zeal.Shiyulin_Explorer.modules.zd.pojo.*;
import com.Zeal.Shiyulin_Explorer.modules.zd.service.ZdService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * Created by Zeal on 2016/11/11.
 */
@Controller
@RequestMapping(value = "/Zd")
public class ZdController {

    @Autowired
    private ZdService zdService;

    @RequestMapping(value = "/FileType")
    @ResponseBody
    public List<ZdFileType> getZdFileType(){
        ZdFileTypeExample example=new ZdFileTypeExample();
        List<ZdFileType> list=zdService.selectByExample(example);
        return list;
    }

    @RequestMapping(value = "/ZdLevel")
    @ResponseBody
    public List<ZdLevel> getZdLevel(){
        ZdLevelExample example= new ZdLevelExample();
        List<ZdLevel> list=zdService.selectByExample(example);
        return list;
    }

    @RequestMapping(value = "/ZdRole")
    @ResponseBody
    public List<ZdRole> getZdRole(){
        ZdRoleExample example= new ZdRoleExample();
        List<ZdRole> list=zdService.selectByExample(example);
        return list;
    }

    @RequestMapping(value = "/ZdSex")
    @ResponseBody
    public List<ZdSex> getZdSex(){
        ZdSexExample example= new ZdSexExample();
        List<ZdSex> list=zdService.selectByExample(example);
        return list;
    }
}
