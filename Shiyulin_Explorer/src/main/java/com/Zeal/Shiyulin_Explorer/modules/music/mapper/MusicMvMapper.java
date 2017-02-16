package com.Zeal.Shiyulin_Explorer.modules.music.mapper;

import com.Zeal.Shiyulin_Explorer.modules.music.pojo.MusicMv;
import com.Zeal.Shiyulin_Explorer.modules.music.pojo.MusicMvExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface MusicMvMapper {
    int countByExample(MusicMvExample example);

    int deleteByExample(MusicMvExample example);

    int deleteMusicMvByPrimaryKey(Long id);

    int insert(MusicMv record);

    int insertSelective(MusicMv record);

    List<MusicMv> selectByExample(MusicMvExample example);

    MusicMv selectMusicMvByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") MusicMv record, @Param("example") MusicMvExample example);

    int updateByExample(@Param("record") MusicMv record, @Param("example") MusicMvExample example);

    int updateByPrimaryKeySelective(MusicMv record);

    int updateByPrimaryKey(MusicMv record);
}