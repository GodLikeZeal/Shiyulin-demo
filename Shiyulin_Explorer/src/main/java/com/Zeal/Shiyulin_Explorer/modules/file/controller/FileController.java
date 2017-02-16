package com.Zeal.Shiyulin_Explorer.modules.file.controller;

import com.Zeal.Shiyulin_Explorer.modules.file.pojo.FileUp;
import com.Zeal.Shiyulin_Explorer.modules.file.pojo.FileUpExample;
import com.Zeal.Shiyulin_Explorer.modules.file.service.FileService;
import com.Zeal.Shiyulin_Explorer.modules.music.pojo.MusicInfo;
import com.Zeal.Shiyulin_Explorer.modules.music.service.MusicService;
import com.Zeal.Shiyulin_Explorer.modules.picture.pojo.PictureInfo;
import com.Zeal.Shiyulin_Explorer.modules.picture.service.PictureService;
import com.Zeal.Shiyulin_Explorer.modules.video.pojo.VideoInfo;
import com.Zeal.Shiyulin_Explorer.modules.video.service.VideoService;
import com.Zeal.Shiyulin_Explorer.util.dataTable.DataTableResult;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.text.DecimalFormat;
import java.util.Date;
import java.util.List;

/**
 * Created by Zeal on 2016/10/25.
 */
@Controller
public class FileController {

    @Autowired
    private FileService fileService;

    @Autowired
    private PictureService pictureService;

    @Autowired
    private MusicService musicService;

    @Autowired
    private VideoService videoService;

    @RequestMapping(value = "uploadfile")
    @ResponseBody
    public String uploadfile(HttpServletRequest request, @Param(value = "file_pic") MultipartFile file_pic,@Param(value = "up_file") MultipartFile up_file)throws Exception{
        int status=0;
        String flag="";
        String result="";
        String name=request.getParameter("filename");
        String urlpath=request.getParameter("urlpath");
        int filetype= Integer.parseInt(request.getParameter("filetype"));
        String introduction=request.getParameter("introduction");
        FileUp fileUp=new FileUp();
        fileUp.setName(name);
        fileUp.setUrl(urlpath);
        fileUp.setFileType(filetype);
        fileUp.setUpUserid((Long) request.getSession().getAttribute("userid"));
        fileUp.setUpTime(new Date());
        fileUp.setIntroduction(introduction);
        int count=fileService.insert(fileUp);
        if(count>0){
            Long fileid=fileUp.getId();
            if(filetype==4){
                String filename=file_pic.getOriginalFilename();
                int index = filename.lastIndexOf(".");
                String lastName = filename.substring(index, filename.length());//文件后缀
                String newname =  fileid+ lastName;//新文件名
                File targetFile = new File(urlpath, newname);
                if (!targetFile.exists()) {
                    targetFile.mkdirs();
                    try{
                        if(file_pic.getSize()>0){
                            file_pic.transferTo(targetFile);
                            String size=GetFileSize(targetFile);
                            fileUp.setSuffix(lastName);
                            fileUp.setSize(size);
                            int updateflag=fileService.updateByPrimaryKeySelective(fileUp);
                            PictureInfo pictureInfo=new PictureInfo();
                            pictureInfo.setFileId(fileid);
                            pictureInfo.setPictureUrl(targetFile.getPath().replace("\\","/"));
                            pictureInfo.setFormat(lastName.substring(1));
                            pictureInfo.setName(fileUp.getName());
                            pictureInfo.setSize(size);
                            pictureInfo.setIntroduction(fileUp.getIntroduction());
                            int flag_file=pictureService.insertSelective(pictureInfo);
                            if(updateflag>0&&flag_file>0){
                                flag=""+file_pic.getName()+":SUCCESS."+flag;
                            }
                        }
                    }catch (Exception e){
                        e.printStackTrace();
                        flag=""+file_pic.getName()+":ERROR."+flag;
                    }
                }else {
                    status=1;  //插入数据失败
                }
            }else {
                int flag_file=0;
                String filename = up_file.getOriginalFilename();
                int index = filename.lastIndexOf(".");
                String lastName = filename.substring(index, filename.length());//文件后缀
                String newname = fileid + lastName;//新文件名
                File targetFile = new File(urlpath, newname);
                if (!targetFile.exists()) {
                    targetFile.mkdirs();
                    try {
                        if (up_file.getSize() > 0) {
                            up_file.transferTo(targetFile);
                            String size = GetFileSize(targetFile);
                            fileUp.setSuffix(lastName);
                            fileUp.setSize(size);
                            int updateflag=fileService.updateByPrimaryKeySelective(fileUp);
                            switch (filetype){
                                case 1:
                                    MusicInfo musicInfo=new MusicInfo();
                                    musicInfo.setName(fileUp.getName());
                                    musicInfo.setFileId(fileUp.getId());
                                    musicInfo.setMusicUrl(targetFile.getPath().replace("\\","/"));
                                    musicInfo.setSize(size);
                                    musicInfo.setIntroduction(fileUp.getIntroduction());
                                    flag_file=musicService.insert(musicInfo);
                                    break;
                                case 2:
                                    VideoInfo videoInfo=new VideoInfo();
                                    videoInfo.setFileId(fileUp.getId());
                                    videoInfo.setName(fileUp.getName());
                                    videoInfo.setIntroduction(fileUp.getIntroduction());
                                    videoInfo.setVideoUrl(targetFile.getPath().replace("\\","/"));
                                    videoInfo.setSuffix(fileUp.getSuffix());
                                    videoInfo.setSize(size);
                                    flag_file=videoService.insertSelective(videoInfo);
                                    break;
                                case 3:break;
                                case 5:break;
                            }
                            if(updateflag>0&&flag_file>0){
                                flag=""+up_file.getName()+":SUCCESS."+flag;
                            }
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                        flag = "" + up_file.getName() + ":ERROR." + flag;
                    }
                } else {
                    status = 1;  //插入数据失败
                }
            }
        }
        result="{status:"+status+",flag:"+flag+"}";

        //System.out.println(file_pic.getName());
        //System.out.println(up_file.getName());
        return result;
    }

    //获取文件信息
    @RequestMapping(value = "myfile",method = RequestMethod.GET)
    @ResponseBody
    public DataTableResult getFileUpList(HttpServletRequest request)throws Exception{
        FileUpExample example=new FileUpExample();
        int pageNumber=Integer.parseInt(request.getParameter("pageNumber"));
        int pageSize=Integer.parseInt(request.getParameter("pageSize"));
        example.setPageNumber((pageNumber-1)*pageSize);
        example.setPageSize(pageSize);
        List<FileUp> list=fileService.selectByExample(example);
        DataTableResult result=new DataTableResult();
        int total=fileService.countByExample(example);
        result.setTotal(total);
        result.setRows(list);
        return result;
    }

    //根据Id删除单条记录
    @RequestMapping(value = "myfile/{id}",method = RequestMethod.DELETE)
    @ResponseBody
    public int deleteFile(HttpServletRequest request, @PathVariable("id") Long id)throws Exception{
        int flag=0;
        FileUp fileUp=fileService.selectByPrimaryKey(id);
        String filenamestr=fileUp.getUrl()+"/"+id+fileUp.getSuffix();
        File file=new File(filenamestr);
        if(file.exists()&&file.isFile()){
            if(file.delete()){
              flag = fileService.deleteByPrimaryKey(id);
            }
        }
        return flag;
    }

    //根据id更新单条记录
    @RequestMapping(value = "myfile/{id}",method = RequestMethod.PUT)
    @ResponseBody
    public int updateFile(HttpServletRequest request,@PathVariable("id") Long id)throws Exception{
        int flag=0;
        FileUp fileUp=new FileUp();
        fileUp.setId(id);
        fileUp.setName(request.getParameter("name"));
        fileUp.setIntroduction(request.getParameter("introduction"));
        flag=fileService.updateByPrimaryKeySelective(fileUp);
        return flag;
    }

    //获取文件的大小
    public String GetFileSize(File file){
        String size = "";
        if(file.exists() && file.isFile()){
            long fileS = file.length();
            DecimalFormat df = new DecimalFormat("#.00");
            if (fileS < 1024) {
                size = df.format((double) fileS) + "BT";
            } else if (fileS < 1048576) {
                size = df.format((double) fileS / 1024) + "KB";
            } else if (fileS < 1073741824) {
                size = df.format((double) fileS / 1048576) + "MB";
            } else {
                size = df.format((double) fileS / 1073741824) +"GB";
            }
        }else if(file.exists() && file.isDirectory()){
            size = "";
        }else{
            size = "0BT";
        }
        return size;
    }

}
