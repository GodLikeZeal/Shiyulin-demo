package com.Zeal.Shiyulin_Explorer.modules.picture.serviceImp;

import com.Zeal.Shiyulin_Explorer.modules.picture.mapper.PictureInfoMapper;
import com.Zeal.Shiyulin_Explorer.modules.picture.pojo.PictureInfo;
import com.Zeal.Shiyulin_Explorer.modules.picture.pojo.PictureInfoExample;
import com.Zeal.Shiyulin_Explorer.modules.picture.service.PictureService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

/**
 * Created by Zeal on 2016/12/1.
 */
public class PictureServiceImp implements PictureService{
    @Autowired
    private PictureInfoMapper pictureInfoMapper;

    @Override
    public int countByExample(PictureInfoExample example) {
        return pictureInfoMapper.countByExample(example);
    }

    @Override
    public int deleteByExample(PictureInfoExample example) {
        return pictureInfoMapper.deleteByExample(example);
    }

    @Override
    public int deleteByPrimaryKey(Long id) {
        return pictureInfoMapper.deleteByPrimaryKey(id);
    }

    @Override
    public int insert(PictureInfo record) {
        return pictureInfoMapper.insert(record);
    }

    @Override
    public int insertSelective(PictureInfo record) {
        return pictureInfoMapper.insertSelective(record);
    }

    @Override
    public List<PictureInfo> selectByExample(PictureInfoExample example) {
        return pictureInfoMapper.selectByExample(example);
    }

    @Override
    public PictureInfo selectByPrimaryKey(Long id) {
        return pictureInfoMapper.selectByPrimaryKey(id);
    }

    @Override
    public List<PictureInfo> randomselectonerow() {
        return pictureInfoMapper.randomselectonerow();
    }

    @Override
    public int updateByExampleSelective(@Param("record") PictureInfo record, @Param("example") PictureInfoExample example) {
        return pictureInfoMapper.updateByExampleSelective(record,example);
    }

    @Override
    public int updateByExample(@Param("record") PictureInfo record, @Param("example") PictureInfoExample example) {
        return pictureInfoMapper.updateByExample(record,example);
    }

    @Override
    public int updateByPrimaryKeySelective(PictureInfo record) {
        return pictureInfoMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public int updateByPrimaryKey(PictureInfo record) {
        return pictureInfoMapper.updateByPrimaryKey(record);
    }
}
