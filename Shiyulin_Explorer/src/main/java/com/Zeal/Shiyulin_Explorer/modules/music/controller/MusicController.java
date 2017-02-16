package com.Zeal.Shiyulin_Explorer.modules.music.controller;

import com.Zeal.Shiyulin_Explorer.modules.common.fmgx.pojo.ImgFmgxExample;
import com.Zeal.Shiyulin_Explorer.modules.common.fmgx.service.FmgxService;
import com.Zeal.Shiyulin_Explorer.modules.file.service.FileService;
import com.Zeal.Shiyulin_Explorer.modules.music.pojo.MusicInfo;
import com.Zeal.Shiyulin_Explorer.modules.music.pojo.MusicInfoExample;
import com.Zeal.Shiyulin_Explorer.modules.music.service.MusicService;
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
 * Created by Zeal on 2016/11/30.
 */
@Controller
public class MusicController {
    @Autowired
    private MusicService musicService;
    @Autowired
    private FileService fileService;
    @Autowired
    private FmgxService fmgxService;

    //获取音乐信息
    @RequestMapping(value = "mymusic",method = RequestMethod.GET)
    @ResponseBody
    public DataTableResult getMusicInfoList(HttpServletRequest request)throws Exception{
        MusicInfoExample example= new MusicInfoExample();
        int pageNumber=Integer.parseInt(request.getParameter("pageNumber"));
        int pageSize=Integer.parseInt(request.getParameter("pageSize"));
        example.setPageNumber((pageNumber-1)*pageSize);
        example.setPageSize(pageSize);
        List<MusicInfo> list=musicService.selectByExample(example);
        DataTableResult result=new DataTableResult();
        int total=musicService.countByExample(example);
        result.setTotal(total);
        result.setRows(list);
        return result;
    }

    //获取5条热门音乐信息
    @RequestMapping(value = "getfiveHotMusicInfoList",method = RequestMethod.GET)
    @ResponseBody
    public DataTableResult getfiveHotMusicInfoList(HttpServletRequest request)throws Exception{
        MusicInfoExample example= new MusicInfoExample();
        int pageNumber=1;
        int pageSize=5;
        example.setPageNumber((pageNumber-1)*pageSize);
        example.setPageSize(pageSize);
        example.setOrderByClause("click_Num desc");
        List<MusicInfo> list=musicService.selectByExample(example);
        List<MusicInfo> mlist=new ArrayList<MusicInfo>();
        Iterator it=list.iterator();
        while (it.hasNext()){
            MusicInfo musicInfo= (MusicInfo) it.next();
            Long id = musicInfo.getFileId();
            String res="";
            ImgFmgxExample Imgexample=new ImgFmgxExample();
            Imgexample.or().andFileIdEqualTo(id);
            res=fmgxService.selectByExample(Imgexample);
            musicInfo.setMusicUrl(res);
            mlist.add(musicInfo);
        }
        DataTableResult result=new DataTableResult();
        int total=musicService.countByExample(example);
        result.setTotal(total);
        result.setRows(mlist);
        return result;
    }

    //根据id更新单条记录
    @RequestMapping(value = "mymusic/{id}",method = RequestMethod.PUT)
    @ResponseBody
    public int updateFile(HttpServletRequest request,@PathVariable("id") Long id)throws Exception{
        int flag=0;
        MusicInfo musicInfo=new MusicInfo();
        musicInfo.setId(id);
        musicInfo.setName(request.getParameter("name"));
        if(!request.getParameter("issuetime").equals("")&&request.getParameter("issuetime")!=null){
            musicInfo.setIssutime(new SimpleDateFormat("yyyy-MM-dd").parse(request.getParameter("issuetime")));
        }
        musicInfo.setLabel(request.getParameter("label"));
        musicInfo.setIntroduction(request.getParameter("introduction"));
        flag=musicService.updateByPrimaryKeySelective(musicInfo);
        return flag;
    }

    //根据Id删除单条记录
    @RequestMapping(value = "mymusic/{id}",method = RequestMethod.DELETE)
    @ResponseBody
    public int deleteFile(HttpServletRequest request, @PathVariable("id") Long id)throws Exception{
        int flag=0;
        flag=musicService.deleteMusicInfoByPrimaryKey(id);
        return flag;
    }

}
