package com.Zeal.Shiyulin_Explorer.modules.zd.mapper;

import com.Zeal.Shiyulin_Explorer.modules.zd.pojo.ZdLevel;
import com.Zeal.Shiyulin_Explorer.modules.zd.pojo.ZdLevelExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface ZdLevelMapper {
    int countByExample(ZdLevelExample example);

    int deleteByExample(ZdLevelExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(ZdLevel record);

    int insertSelective(ZdLevel record);

    List<ZdLevel> selectByExample(ZdLevelExample example);

    ZdLevel selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") ZdLevel record, @Param("example") ZdLevelExample example);

    int updateByExample(@Param("record") ZdLevel record, @Param("example") ZdLevelExample example);

    int updateByPrimaryKeySelective(ZdLevel record);

    int updateByPrimaryKey(ZdLevel record);
}