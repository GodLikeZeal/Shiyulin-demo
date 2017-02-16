package com.Zeal.Shiyulin_Explorer.modules.video.service;

import com.Zeal.Shiyulin_Explorer.modules.video.pojo.VideoInfo;
import com.Zeal.Shiyulin_Explorer.modules.video.pojo.VideoInfoExample;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Zeal on 2016/12/3.
 */
@Service
public interface VideoService {
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
