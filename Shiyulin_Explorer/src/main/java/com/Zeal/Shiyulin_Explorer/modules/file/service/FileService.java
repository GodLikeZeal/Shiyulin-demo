package com.Zeal.Shiyulin_Explorer.modules.file.service;

import com.Zeal.Shiyulin_Explorer.modules.file.pojo.FileUp;
import com.Zeal.Shiyulin_Explorer.modules.file.pojo.FileUpExample;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Zeal on 2016/11/2.
 */
@Service
public interface FileService {
    int insert(FileUp record);

    int updateByPrimaryKeySelective(FileUp record);

    List<FileUp> selectByExample(FileUpExample example);

    FileUp selectByPrimaryKey(Long id);

    int countByExample(FileUpExample example);

    int updateByPrimaryKey(FileUp record);

    int deleteByPrimaryKey(Long id);
}
