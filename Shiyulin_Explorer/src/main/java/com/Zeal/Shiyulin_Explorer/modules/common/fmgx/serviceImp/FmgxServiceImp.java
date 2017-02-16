package com.Zeal.Shiyulin_Explorer.modules.common.fmgx.serviceImp;

import com.Zeal.Shiyulin_Explorer.modules.common.fmgx.mapper.ImgFmgxMapper;
import com.Zeal.Shiyulin_Explorer.modules.common.fmgx.pojo.ImgFmgx;
import com.Zeal.Shiyulin_Explorer.modules.common.fmgx.pojo.ImgFmgxExample;
import com.Zeal.Shiyulin_Explorer.modules.common.fmgx.service.FmgxService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/**
 * Created by Zeal on 2016/12/23.
 */
public class FmgxServiceImp implements FmgxService {

    @Autowired
    private ImgFmgxMapper imgFmgxMapper;
    @Override
    public int countByExample(ImgFmgxExample example) {
        return imgFmgxMapper.countByExample(example);
    }

    @Override
    public int deleteByExample(ImgFmgxExample example) {
        return imgFmgxMapper.deleteByExample(example);
    }

    @Override
    public int deleteByPrimaryKey(Long id) {
        return imgFmgxMapper.deleteByPrimaryKey(id);
    }

    @Override
    public int insert(ImgFmgx record) {
        return imgFmgxMapper.insert(record);
    }

    @Override
    public int insertSelective(ImgFmgx record) {
        return imgFmgxMapper.insertSelective(record);
    }

    @Override
    public String selectByExample(ImgFmgxExample example) {
        //取出最后一次的封面值作为当前的文件的封面
        String res="";
        List<ImgFmgx> imgFmgx=new ArrayList<ImgFmgx>();
        imgFmgx=imgFmgxMapper.selectByExample(example);
        if(imgFmgx.size()>0){
            Iterator iter=imgFmgx.iterator();
            while (iter.hasNext()){
                ImgFmgx imgFmgx1= (ImgFmgx) iter.next();
                res=imgFmgx1.getImgUrl();
            }
        }
        return res;
    }

    @Override
    public ImgFmgx selectByPrimaryKey(Long id) {
        return imgFmgxMapper.selectByPrimaryKey(id);
    }

    @Override
    public int updateByExampleSelective(@Param("record") ImgFmgx record, @Param("example") ImgFmgxExample example) {
        return imgFmgxMapper.updateByExampleSelective(record,example);
    }

    @Override
    public int updateByExample(@Param("record") ImgFmgx record, @Param("example") ImgFmgxExample example) {
        return imgFmgxMapper.updateByExample(record,example);
    }

    @Override
    public int updateByPrimaryKeySelective(ImgFmgx record) {
        return imgFmgxMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public int updateByPrimaryKey(ImgFmgx record) {
        return imgFmgxMapper.updateByPrimaryKey(record);
    }
}
