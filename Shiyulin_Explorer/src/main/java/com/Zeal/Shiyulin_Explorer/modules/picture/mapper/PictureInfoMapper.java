package com.Zeal.Shiyulin_Explorer.modules.picture.mapper;

import com.Zeal.Shiyulin_Explorer.modules.picture.pojo.PictureInfo;
import com.Zeal.Shiyulin_Explorer.modules.picture.pojo.PictureInfoExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface PictureInfoMapper {
    int countByExample(PictureInfoExample example);

    int deleteByExample(PictureInfoExample example);

    int deleteByPrimaryKey(Long id);

    int insert(PictureInfo record);

    int insertSelective(PictureInfo record);

    List<PictureInfo> selectByExample(PictureInfoExample example);

    PictureInfo selectByPrimaryKey(Long id);

    List<PictureInfo> randomselectonerow();

    int updateByExampleSelective(@Param("record") PictureInfo record, @Param("example") PictureInfoExample example);

    int updateByExample(@Param("record") PictureInfo record, @Param("example") PictureInfoExample example);

    int updateByPrimaryKeySelective(PictureInfo record);

    int updateByPrimaryKey(PictureInfo record);
}