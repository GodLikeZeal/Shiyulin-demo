package com.Zeal.Shiyulin_Explorer.modules.common.fmgx.controller;

import com.Zeal.Shiyulin_Explorer.modules.common.fmgx.pojo.ImgFmgx;
import com.Zeal.Shiyulin_Explorer.modules.common.fmgx.pojo.ImgFmgxExample;
import com.Zeal.Shiyulin_Explorer.modules.common.fmgx.service.FmgxService;
import com.Zeal.Shiyulin_Explorer.modules.file.pojo.FileUp;
import com.Zeal.Shiyulin_Explorer.modules.file.service.FileService;
import com.Zeal.Shiyulin_Explorer.modules.picture.pojo.PictureInfo;
import com.Zeal.Shiyulin_Explorer.modules.picture.service.PictureService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.text.DecimalFormat;
import java.util.Date;

/**
 * Created by Zeal on 2017/1/3.
 */
@Controller
public class FmgxController {
    @Autowired
    private FmgxService fmgxService;
    @Autowired
    private FileService fileService;
    @Autowired
    private PictureService pictureService;

    //增加一条fmgx
    @RequestMapping(value = "/fmgx")
    @ResponseBody
    public String insertFmgx(HttpServletRequest request)throws Exception{
        String  flag="";
        String file_Type= request.getParameter("fileType");

        long fileId= Long.parseLong(request.getParameter("fileId"));
        Date updateTime=new Date();
        ImgFmgx imgFmgx=new ImgFmgx();
        imgFmgx.setFileId(fileId);
        if(file_Type.equals("video")){
            imgFmgx.setFileType(2);
        }else if(file_Type.equals("music")){
            imgFmgx.setFileType(1);
        }
        imgFmgx.setUpdatetime(updateTime);
        long imgId= Long.parseLong(request.getParameter("imgId"));
        imgFmgx.setImgId(imgId);
        String imgUrl=request.getParameter("imgUrl");
        imgFmgx.setImgUrl(imgUrl);
        int flagcount=fmgxService.insertSelective(imgFmgx);
        if(flagcount>0){
            flag=imgFmgx.getImgUrl();
        }
        return flag;
    }

    //增加一条fmgx
    @RequestMapping(value = "/upfmgx")
    @ResponseBody
    public String insertupFmgx(HttpServletRequest request,@Param(value = "file_pic") MultipartFile file_pic)throws Exception{
        String  flag="";
        String file_Type= request.getParameter("fileType");
        long fileId= Long.parseLong(request.getParameter("fileId"));
        Date updateTime=new Date();
        ImgFmgx imgFmgx=new ImgFmgx();
        imgFmgx.setFileId(fileId);
        if(file_Type.equals("video")){
            imgFmgx.setFileType(2);
        }else if(file_Type.equals("music")){
            imgFmgx.setFileType(1);
        }
        imgFmgx.setUpdatetime(updateTime);
        FileUp fileUp=new FileUp();
        fileUp.setFileType(4);
        fileUp.setUrl("/file/picture");
        fileUp.setUpTime(updateTime);
        int count=fileService.insert(fileUp);
        if(count>0){          //插入成功
            Long fileid=fileUp.getId();
            String filename=file_pic.getOriginalFilename();
            int index = filename.lastIndexOf(".");
            String lastName = filename.substring(index, filename.length());//文件后缀
            String newname =  fileid+ lastName;//新文件名
            File targetFile = new File(fileUp.getUrl(), newname);
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
                        imgFmgx.setImgId(pictureInfo.getId());
                        imgFmgx.setImgUrl(pictureInfo.getPictureUrl());
                        int flagcount=fmgxService.insertSelective(imgFmgx);
                        if(updateflag>0&&flag_file>0){
                            flag=imgFmgx.getImgUrl();
                        }
                    }
                }catch (Exception e){
                    e.printStackTrace();
                    //flag=""+file_pic.getName()+":ERROR."+flag;
                }
            }else {
                //插入数据失败
            }
        }else{
            //插入失败
        }
        return flag;
    }

    //根据文件Id查询封面url记录
    @RequestMapping(value = "getFm/{id}")
    @ResponseBody
    public String getPictureInfo(HttpServletRequest request, @PathVariable("id") Long id)throws Exception{
        String res="";
        ImgFmgxExample example=new ImgFmgxExample();
        example.or().andFileIdEqualTo(id);
        res=fmgxService.selectByExample(example);
        return res;
    }

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

