package com.Zeal.Shiyulin_Explorer.modules.common.fmgx.service;

import com.Zeal.Shiyulin_Explorer.modules.common.fmgx.pojo.ImgFmgx;
import com.Zeal.Shiyulin_Explorer.modules.common.fmgx.pojo.ImgFmgxExample;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;

/**
 * Created by Zeal on 2016/12/23.
 */
@Service
public interface FmgxService {
    int countByExample(ImgFmgxExample example);

    int deleteByExample(ImgFmgxExample example);

    int deleteByPrimaryKey(Long id);

    int insert(ImgFmgx record);

    int insertSelective(ImgFmgx record);

    String selectByExample(ImgFmgxExample example);

    ImgFmgx selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") ImgFmgx record, @Param("example") ImgFmgxExample example);

    int updateByExample(@Param("record") ImgFmgx record, @Param("example") ImgFmgxExample example);

    int updateByPrimaryKeySelective(ImgFmgx record);

    int updateByPrimaryKey(ImgFmgx record);
}
