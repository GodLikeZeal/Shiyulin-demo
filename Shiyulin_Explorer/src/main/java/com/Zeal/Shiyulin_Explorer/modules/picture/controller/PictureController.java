package com.Zeal.Shiyulin_Explorer.modules.picture.controller;

import com.Zeal.Shiyulin_Explorer.modules.file.service.FileService;
import com.Zeal.Shiyulin_Explorer.modules.picture.pojo.PictureInfo;
import com.Zeal.Shiyulin_Explorer.modules.picture.pojo.PictureInfoExample;
import com.Zeal.Shiyulin_Explorer.modules.picture.service.PictureService;
import com.Zeal.Shiyulin_Explorer.util.dataTable.DataTableResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by Zeal on 2016/12/5.
 */
@Controller
public class PictureController {
    @Autowired
    private PictureService pictureService;
    @Autowired
    private FileService fileService;

    //获取音乐信息
    @RequestMapping(value = "mypicture",method = RequestMethod.GET)
    @ResponseBody
    public DataTableResult getMusicInfoList(HttpServletRequest request)throws Exception{
        PictureInfoExample example= new PictureInfoExample();
        int pageNumber=Integer.parseInt(request.getParameter("pageNumber"));
        int pageSize=Integer.parseInt(request.getParameter("pageSize"));
        example.setPageNumber((pageNumber-1)*pageSize);
        example.setPageSize(pageSize);
        List<PictureInfo> list=pictureService.selectByExample(example);
        DataTableResult result=new DataTableResult();
        int total=pictureService.countByExample(example);
        result.setTotal(total);
        result.setRows(list);
        return result;
    }

    //根据id更新单条记录
    @RequestMapping(value = "mypicture/{id}",method = RequestMethod.PUT)
    @ResponseBody
    public int updatePictureInfo(HttpServletRequest request,@PathVariable("id") Long id)throws Exception{
        int flag=0;
        PictureInfo pictureInfo=new PictureInfo();
        pictureInfo.setId(id);
        pictureInfo.setName(request.getParameter("name"));
        pictureInfo.setLabel(request.getParameter("label"));
        pictureInfo.setIntroduction(request.getParameter("introduction"));
        flag=pictureService.updateByPrimaryKeySelective(pictureInfo);
//        FileUp fileUp=new FileUp();
//        fileUp.setId(Long.parseLong(request.getParameter("fileId")));
//        fileUp.setName(request.getParameter("name"));
//        fileUp.setIntroduction(request.getParameter("introduction"));
//        int fileflag=fileService.updateByPrimaryKeySelective(fileUp);
//        if(pictureflag>0&&fileflag>0){
//            flag=1;
//        }
        return flag;
    }

    //获取5条热门图片信息
    @RequestMapping(value = "getfiveHotPictureInfoList",method = RequestMethod.GET)
    @ResponseBody
    public DataTableResult getfiveHotPictureInfoList(HttpServletRequest request)throws Exception{
        PictureInfoExample example= new PictureInfoExample();
        int pageNumber=1;
        int pageSize=5;
        example.setPageNumber((pageNumber-1)*pageSize);
        example.setPageSize(pageSize);
        example.setOrderByClause("click_Num desc");
        List<PictureInfo> list=pictureService.selectByExample(example);
        DataTableResult result=new DataTableResult();
        int total=pictureService.countByExample(example);
        result.setTotal(total);
        result.setRows(list);
        return result;
    }

    //根据Id删除单条记录
    @RequestMapping(value = "mypicture/{id}",method = RequestMethod.DELETE)
    @ResponseBody
    public int deletePictureInfo(HttpServletRequest request, @PathVariable("id") Long id)throws Exception{
        int flag=0;
        flag=pictureService.deleteByPrimaryKey(id);
        return flag;
    }

    //随机从图片库中取出4张
    @RequestMapping(value = "randomgetpicture/{num}")
    @ResponseBody
    public List<PictureInfo> getRandomgetPicture(HttpServletRequest request, @PathVariable("num") Integer num)throws Exception{
        List<PictureInfo> list=new ArrayList<PictureInfo>();
        list=pictureService.randomselectonerow();
        return list;
    }
}
