package com.Zeal.Shiyulin_Explorer.modules.common.fmgx.mapper;

import com.Zeal.Shiyulin_Explorer.modules.common.fmgx.pojo.ImgFmgx;
import com.Zeal.Shiyulin_Explorer.modules.common.fmgx.pojo.ImgFmgxExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface ImgFmgxMapper {
    int countByExample(ImgFmgxExample example);

    int deleteByExample(ImgFmgxExample example);

    int deleteByPrimaryKey(Long id);

    int insert(ImgFmgx record);

    int insertSelective(ImgFmgx record);

    List<ImgFmgx> selectByExample(ImgFmgxExample example);

    ImgFmgx selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") ImgFmgx record, @Param("example") ImgFmgxExample example);

    int updateByExample(@Param("record") ImgFmgx record, @Param("example") ImgFmgxExample example);

    int updateByPrimaryKeySelective(ImgFmgx record);

    int updateByPrimaryKey(ImgFmgx record);
}