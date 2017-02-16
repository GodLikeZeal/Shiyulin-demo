package com.Zeal.Shiyulin_Explorer.modules.music.service;

import com.Zeal.Shiyulin_Explorer.modules.music.pojo.*;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Zeal on 2016/11/30.
 */
@Service
public interface MusicService {
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
