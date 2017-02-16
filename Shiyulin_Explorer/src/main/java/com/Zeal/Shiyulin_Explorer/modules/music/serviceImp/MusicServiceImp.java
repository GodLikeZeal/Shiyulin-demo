package com.Zeal.Shiyulin_Explorer.modules.music.serviceImp;

import com.Zeal.Shiyulin_Explorer.modules.music.mapper.MusicAlbumMapper;
import com.Zeal.Shiyulin_Explorer.modules.music.mapper.MusicInfoMapper;
import com.Zeal.Shiyulin_Explorer.modules.music.mapper.MusicLyricMapper;
import com.Zeal.Shiyulin_Explorer.modules.music.mapper.MusicMvMapper;
import com.Zeal.Shiyulin_Explorer.modules.music.pojo.*;
import com.Zeal.Shiyulin_Explorer.modules.music.service.MusicService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

/**
 * Created by Zeal on 2016/11/30.
 */
public class MusicServiceImp implements MusicService {

    @Autowired
    private MusicAlbumMapper musicAlbumMapper;
    @Autowired
    private MusicInfoMapper musicInfoMapper;
    @Autowired
    private MusicLyricMapper musicLyricMapper;
    @Autowired
    private MusicMvMapper musicMvMapper;
    @Override
    public int countByExample(MusicAlbumExample example) {
        return musicAlbumMapper.countByExample(example);
    }

    @Override
    public int deleteByExample(MusicAlbumExample example) {
        return musicAlbumMapper.deleteByExample(example);
    }

    @Override
    public int deleteMusicAlbumByPrimaryKey(Long id) {
        return musicAlbumMapper.deleteMusicAlbumByPrimaryKey(id);
    }

    @Override
    public int insert(MusicAlbum record) {
        return musicAlbumMapper.insert(record);
    }

    @Override
    public int insertSelective(MusicAlbum record) {
        return musicAlbumMapper.insertSelective(record);
    }

    @Override
    public List<MusicAlbum> selectByExample(MusicAlbumExample example) {
        return musicAlbumMapper.selectByExample(example);
    }

    @Override
    public MusicAlbum selectMusicAlbumByPrimaryKey(Long id) {
        return musicAlbumMapper.selectMusicAlbumByPrimaryKey(id);
    }

    @Override
    public int updateByExampleSelective(@Param("record") MusicAlbum record, @Param("example") MusicAlbumExample example) {
        return musicAlbumMapper.updateByExampleSelective(record,example);
    }

    @Override
    public int updateByExample(@Param("record") MusicAlbum record, @Param("example") MusicAlbumExample example) {
        return musicAlbumMapper.updateByExample(record,example);
    }

    @Override
    public int updateByPrimaryKeySelective(MusicAlbum record) {
        return musicAlbumMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public int updateByPrimaryKey(MusicAlbum record) {
        return musicAlbumMapper.updateByPrimaryKey(record);
    }

    @Override
    public int countByExample(MusicInfoExample example) {
        return musicInfoMapper.countByExample(example);
    }

    @Override
    public int deleteByExample(MusicInfoExample example) {
        return musicInfoMapper.deleteByExample(example);
    }

    @Override
    public int deleteMusicInfoByPrimaryKey(Long id) {
        return musicInfoMapper.deleteMusicInfoByPrimaryKey(id);
    }

    @Override
    public int insert(MusicInfo record) {
        return musicInfoMapper.insert(record);
    }

    @Override
    public int insertSelective(MusicInfo record) {
        return musicInfoMapper.insertSelective(record);
    }

    @Override
    public List<MusicInfo> selectByExample(MusicInfoExample example) {
        return musicInfoMapper.selectByExample(example);
    }

    @Override
    public MusicInfo selectMusicInfoByPrimaryKey(Long id) {
        return musicInfoMapper.selectMusicInfoByPrimaryKey(id);
    }

    @Override
    public int updateByExampleSelective(@Param("record") MusicInfo record, @Param("example") MusicInfoExample example) {
        return musicInfoMapper.updateByExampleSelective(record,example);
    }

    @Override
    public int updateByExample(@Param("record") MusicInfo record, @Param("example") MusicInfoExample example) {
        return musicInfoMapper.updateByExample(record,example);
    }

    @Override
    public int updateByPrimaryKeySelective(MusicInfo record) {
        return musicInfoMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public int updateByPrimaryKey(MusicInfo record) {
        return musicInfoMapper.updateByPrimaryKey(record);
    }

    @Override
    public int countByExample(MusicLyricExample example) {
        return musicLyricMapper.countByExample(example);
    }

    @Override
    public int deleteByExample(MusicLyricExample example) {
        return musicLyricMapper.deleteByExample(example);
    }

    @Override
    public int deleteMusicLyricByPrimaryKey(Long id) {
        return musicLyricMapper.deleteMusicLyricByPrimaryKey(id);
    }

    @Override
    public int insert(MusicLyric record) {
        return musicLyricMapper.insert(record);
    }

    @Override
    public int insertSelective(MusicLyric record) {
        return musicLyricMapper.insertSelective(record);
    }

    @Override
    public List<MusicLyric> selectByExample(MusicLyricExample example) {
        return musicLyricMapper.selectByExample(example);
    }

    @Override
    public MusicLyric selectMusicLyricByPrimaryKey(Long id) {
        return musicLyricMapper.selectMusicLyricByPrimaryKey(id);
    }

    @Override
    public int updateByExampleSelective(@Param("record") MusicLyric record, @Param("example") MusicLyricExample example) {
        return musicLyricMapper.updateByExampleSelective(record,example);
    }

    @Override
    public int updateByExample(@Param("record") MusicLyric record, @Param("example") MusicLyricExample example) {
        return musicLyricMapper.updateByExample(record,example);
    }

    @Override
    public int updateByPrimaryKeySelective(MusicLyric record) {
        return musicLyricMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public int updateByPrimaryKey(MusicLyric record) {
        return musicLyricMapper.updateByPrimaryKey(record);
    }

    @Override
    public int countByExample(MusicMvExample example) {
        return musicMvMapper.countByExample(example);
    }

    @Override
    public int deleteByExample(MusicMvExample example) {
        return musicMvMapper.deleteByExample(example);
    }

    @Override
    public int deleteMusicMvByPrimaryKey(Long id) {
        return musicMvMapper.deleteMusicMvByPrimaryKey(id);
    }

    @Override
    public int insert(MusicMv record) {
        return musicMvMapper.insert(record);
    }

    @Override
    public int insertSelective(MusicMv record) {
        return musicMvMapper.insertSelective(record);
    }

    @Override
    public List<MusicMv> selectByExample(MusicMvExample example) {
        return musicMvMapper.selectByExample(example);
    }

    @Override
    public MusicMv selectMusicMvByPrimaryKey(Long id) {
        return musicMvMapper.selectMusicMvByPrimaryKey(id);
    }

    @Override
    public int updateByExampleSelective(@Param("record") MusicMv record, @Param("example") MusicMvExample example) {
        return musicMvMapper.updateByExampleSelective(record,example);
    }

    @Override
    public int updateByExample(@Param("record") MusicMv record, @Param("example") MusicMvExample example) {
        return musicMvMapper.updateByExample(record,example);
    }

    @Override
    public int updateByPrimaryKeySelective(MusicMv record) {
        return musicMvMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public int updateByPrimaryKey(MusicMv record) {
        return musicMvMapper.updateByPrimaryKey(record);
    }
}
