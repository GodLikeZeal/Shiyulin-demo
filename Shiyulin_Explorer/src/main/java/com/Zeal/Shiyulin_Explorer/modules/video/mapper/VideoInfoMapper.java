package com.Zeal.Shiyulin_Explorer.modules.video.mapper;

import com.Zeal.Shiyulin_Explorer.modules.video.pojo.VideoInfo;
import com.Zeal.Shiyulin_Explorer.modules.video.pojo.VideoInfoExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface VideoInfoMapper {
    int countByExample(VideoInfoExample example);

    int deleteByExample(VideoInfoExample example);

    int deleteByPrimaryKey(Long id);

    int insert(VideoInfo record);

    int insertSelective(VideoInfo record);

    List<VideoInfo> selectByExample(VideoInfoExample example);

    VideoInfo selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") VideoInfo record, @Param("example") VideoInfoExample example);

    int updateByExample(@Param("record") VideoInfo record, @Param("example") VideoInfoExample example);

    int updateByPrimaryKeySelective(VideoInfo record);

    int updateByPrimaryKey(VideoInfo record);
}