package com.Zeal.Shiyulin_Explorer.modules.zd.mapper;

import com.Zeal.Shiyulin_Explorer.modules.zd.pojo.ZdSex;
import com.Zeal.Shiyulin_Explorer.modules.zd.pojo.ZdSexExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface ZdSexMapper {
    int countByExample(ZdSexExample example);

    int deleteByExample(ZdSexExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(ZdSex record);

    int insertSelective(ZdSex record);

    List<ZdSex> selectByExample(ZdSexExample example);

    ZdSex selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") ZdSex record, @Param("example") ZdSexExample example);

    int updateByExample(@Param("record") ZdSex record, @Param("example") ZdSexExample example);

    int updateByPrimaryKeySelective(ZdSex record);

    int updateByPrimaryKey(ZdSex record);
}