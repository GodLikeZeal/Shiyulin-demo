package com.Zeal.Shiyulin_Explorer.modules.music.mapper;

import com.Zeal.Shiyulin_Explorer.modules.music.pojo.MusicAlbum;
import com.Zeal.Shiyulin_Explorer.modules.music.pojo.MusicAlbumExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface MusicAlbumMapper {
    int countByExample(MusicAlbumExample example);

    int deleteByExample(MusicAlbumExample example);

    int deleteMusicAlbumByPrimaryKey(Long id);

    int insert(MusicAlbum record);

    int insertSelective(MusicAlbum record);

    List<MusicAlbum> selectByExample(MusicAlbumExample example);

    MusicAlbum selectMusicAlbumByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") MusicAlbum record, @Param("example") MusicAlbumExample example);

    int updateByExample(@Param("record") MusicAlbum record, @Param("example") MusicAlbumExample example);

    int updateByPrimaryKeySelective(MusicAlbum record);

    int updateByPrimaryKey(MusicAlbum record);
}