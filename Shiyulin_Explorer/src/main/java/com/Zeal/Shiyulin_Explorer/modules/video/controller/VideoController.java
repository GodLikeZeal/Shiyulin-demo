package com.Zeal.Shiyulin_Explorer.modules.video.controller;

import com.Zeal.Shiyulin_Explorer.modules.common.fmgx.pojo.ImgFmgxExample;
import com.Zeal.Shiyulin_Explorer.modules.common.fmgx.service.FmgxService;
import com.Zeal.Shiyulin_Explorer.modules.file.service.FileService;
import com.Zeal.Shiyulin_Explorer.modules.video.pojo.VideoInfo;
import com.Zeal.Shiyulin_Explorer.modules.video.pojo.VideoInfoExample;
import com.Zeal.Shiyulin_Explorer.modules.video.service.VideoService;
import com.Zeal.Shiyulin_Explorer.util.dataTable.DataTableResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/**
 * Created by Zeal on 2016/12/3.
 */
@Controller
public class VideoController {
   @Autowired
    private VideoService videoService;
    @Autowired
    private FileService fileService;
    @Autowired
    private FmgxService fmgxService;


    //获取文件信息
    @RequestMapping(value = "myvideo",method = RequestMethod.GET)
    @ResponseBody
    public DataTableResult getVideoInfoList(HttpServletRequest request)throws Exception{
        VideoInfoExample example= new VideoInfoExample();
        int pageNumber=Integer.parseInt(request.getParameter("pageNumber"));
        int pageSize=Integer.parseInt(request.getParameter("pageSize"));
        example.setPageNumber((pageNumber-1)*pageSize);
        example.setPageSize(pageSize);
        List<VideoInfo> list=videoService.selectByExample(example);
        DataTableResult result=new DataTableResult();
        int total=videoService.countByExample(example);
        result.setTotal(total);
        result.setRows(list);
        return result;
    }

    //获取5条热门视频信息
    @RequestMapping(value = "getfiveHotVideoInfoList",method = RequestMethod.GET)
    @ResponseBody
    public DataTableResult getfiveHotVideoInfoList(HttpServletRequest request)throws Exception{
        VideoInfoExample example= new VideoInfoExample();
        int pageNumber=1;
        int pageSize=5;
        example.setPageNumber((pageNumber-1)*pageSize);
        example.setPageSize(pageSize);
        example.setOrderByClause("click_Num desc");
        List<VideoInfo> list=videoService.selectByExample(example);
        List<VideoInfo> mlist=new ArrayList<VideoInfo>();
        Iterator it=list.iterator();
        while (it.hasNext()){
            VideoInfo videoInfo= (VideoInfo) it.next();
            Long id = videoInfo.getFileId();
            String res="";
            ImgFmgxExample Imgexample=new ImgFmgxExample();
            Imgexample.or().andFileIdEqualTo(id);
            res=fmgxService.selectByExample(Imgexample);
            videoInfo.setVideoUrl(res);
            mlist.add(videoInfo);
        }
        DataTableResult result=new DataTableResult();
        int total=videoService.countByExample(example);
        result.setTotal(total);
        result.setRows(mlist);
        return result;
    }

    //根据id更新单条记录
    @RequestMapping(value = "myvideo/{id}",method = RequestMethod.PUT)
    @ResponseBody
    public int updateFile(HttpServletRequest request,@PathVariable("id") Long id)throws Exception{
        int flag=0;
        VideoInfo videoInfo=new VideoInfo();
        videoInfo.setId(id);
        videoInfo.setName(request.getParameter("name"));
        videoInfo.setPlayactor(request.getParameter("playactor"));
        if(!request.getParameter("issuetime").equals("")&&request.getParameter("issuetime")!=null) {
            videoInfo.setIssuetime(new SimpleDateFormat("yyyy-MM-dd").parse(request.getParameter("issuetime")));
        }
        videoInfo.setLabel(request.getParameter("label"));
        videoInfo.setIntroduction(request.getParameter("introduction"));
        flag=videoService.updateByPrimaryKeySelective(videoInfo);
//        FileUp fileUp=new FileUp();
//        fileUp.setId(Long.parseLong(request.getParameter("fileId")));
//        fileUp.setName(request.getParameter("name"));
//        fileUp.setIntroduction(request.getParameter("introduction"));
//        int fileflag=fileService.updateByPrimaryKeySelective(fileUp);
//        if(videoflag>0&&fileflag>0){
//            flag=1;
//        }
        return flag;
    }

    //根据Id删除单条记录
    @RequestMapping(value = "myvideo/{id}",method = RequestMethod.DELETE)
    @ResponseBody
    public int deleteFile(HttpServletRequest request, @PathVariable("id") Long id)throws Exception{
        int flag=0;
        flag=videoService.deleteByPrimaryKey(id);
        return flag;
    }


}
