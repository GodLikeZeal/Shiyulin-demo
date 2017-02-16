package com.Zeal.Shiyulin_Explorer.modules.video.serviceImp;

import com.Zeal.Shiyulin_Explorer.modules.video.mapper.VideoInfoMapper;
import com.Zeal.Shiyulin_Explorer.modules.video.pojo.VideoInfo;
import com.Zeal.Shiyulin_Explorer.modules.video.pojo.VideoInfoExample;
import com.Zeal.Shiyulin_Explorer.modules.video.service.VideoService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Zeal on 2016/12/3.
 */
@Service
public class VideoServiceImp  implements VideoService{

    @Autowired
    private VideoInfoMapper videoInfoMapper;
    @Override
    public int countByExample(VideoInfoExample example) {
        return videoInfoMapper.countByExample(example);
    }

    @Override
    public int deleteByExample(VideoInfoExample example) {
        return videoInfoMapper.deleteByExample(example);
    }

    @Override
    public int deleteByPrimaryKey(Long id) {
        return videoInfoMapper.deleteByPrimaryKey(id);
    }

    @Override
    public int insert(VideoInfo record) {
        return videoInfoMapper.insert(record);
    }

    @Override
    public int insertSelective(VideoInfo record) {
        return videoInfoMapper.insertSelective(record);
    }

    @Override
    public List<VideoInfo> selectByExample(VideoInfoExample example) {
        return videoInfoMapper.selectByExample(example);
    }

    @Override
    public VideoInfo selectByPrimaryKey(Long id) {
        return videoInfoMapper.selectByPrimaryKey(id);
    }

    @Override
    public int updateByExampleSelective(@Param("record") VideoInfo record, @Param("example") VideoInfoExample example) {
        return videoInfoMapper.updateByExampleSelective(record,example);
    }

    @Override
    public int updateByExample(@Param("record") VideoInfo record, @Param("example") VideoInfoExample example) {
        return videoInfoMapper.updateByExample(record,example);
    }

    @Override
    public int updateByPrimaryKeySelective(VideoInfo record) {
        return videoInfoMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public int updateByPrimaryKey(VideoInfo record) {
        return videoInfoMapper.updateByPrimaryKey(record);
    }
}
