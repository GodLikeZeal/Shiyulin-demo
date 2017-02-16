package com.Zeal.Shiyulin_Explorer.modules.file.mapper;

import com.Zeal.Shiyulin_Explorer.modules.file.pojo.FileUp;
import com.Zeal.Shiyulin_Explorer.modules.file.pojo.FileUpExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface FileUpMapper {
    int countByExample(FileUpExample example);

    int deleteByExample(FileUpExample example);

    int deleteByPrimaryKey(Long id);

    int insert(FileUp record);

    int insertSelective(FileUp record);

    List<FileUp> selectByExample(FileUpExample example);

    FileUp selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") FileUp record, @Param("example") FileUpExample example);

    int updateByExample(@Param("record") FileUp record, @Param("example") FileUpExample example);

    int updateByPrimaryKeySelective(FileUp record);

    int updateByPrimaryKey(FileUp record);
}