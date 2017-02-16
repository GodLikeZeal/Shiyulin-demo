package com.Zeal.Shiyulin_Explorer.modules.music.mapper;

import com.Zeal.Shiyulin_Explorer.modules.music.pojo.MusicInfo;
import com.Zeal.Shiyulin_Explorer.modules.music.pojo.MusicInfoExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface MusicInfoMapper {
    int countByExample(MusicInfoExample example);

    int deleteByExample(MusicInfoExample example);

    int deleteMusicInfoByPrimaryKey(Long id);

    int insert(MusicInfo record);

    int insertSelective(MusicInfo record);

    List<MusicInfo> selectByExample(MusicInfoExample example);

    MusicInfo selectMusicInfoByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") MusicInfo record, @Param("example") MusicInfoExample example);

    int updateByExample(@Param("record") MusicInfo record, @Param("example") MusicInfoExample example);

    int updateByPrimaryKeySelective(MusicInfo record);

    int updateByPrimaryKey(MusicInfo record);
}