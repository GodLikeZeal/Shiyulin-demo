package com.Zeal.Shiyulin_Explorer.modules.zd.mapper;

import com.Zeal.Shiyulin_Explorer.modules.zd.pojo.ZdFileType;
import com.Zeal.Shiyulin_Explorer.modules.zd.pojo.ZdFileTypeExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ZdFileTypeMapper {
    int countByExample(ZdFileTypeExample example);

    int deleteByExample(ZdFileTypeExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(ZdFileType record);

    int insertSelective(ZdFileType record);

    List<ZdFileType> selectByExample(ZdFileTypeExample example);

    ZdFileType selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") ZdFileType record, @Param("example") ZdFileTypeExample example);

    int updateByExample(@Param("record") ZdFileType record, @Param("example") ZdFileTypeExample example);

    int updateByPrimaryKeySelective(ZdFileType record);

    int updateByPrimaryKey(ZdFileType record);
}