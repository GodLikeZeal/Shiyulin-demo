package com.Zeal.Shiyulin_Explorer.modules.music.mapper;

import com.Zeal.Shiyulin_Explorer.modules.music.pojo.MusicLyric;
import com.Zeal.Shiyulin_Explorer.modules.music.pojo.MusicLyricExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface MusicLyricMapper {
    int countByExample(MusicLyricExample example);

    int deleteByExample(MusicLyricExample example);

    int deleteMusicLyricByPrimaryKey(Long id);

    int insert(MusicLyric record);

    int insertSelective(MusicLyric record);

    List<MusicLyric> selectByExample(MusicLyricExample example);

    MusicLyric selectMusicLyricByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") MusicLyric record, @Param("example") MusicLyricExample example);

    int updateByExample(@Param("record") MusicLyric record, @Param("example") MusicLyricExample example);

    int updateByPrimaryKeySelective(MusicLyric record);

    int updateByPrimaryKey(MusicLyric record);


}