package com.Zeal.Shiyulin_Explorer.modules.file.serviceImp;

import com.Zeal.Shiyulin_Explorer.modules.file.mapper.FileUpMapper;
import com.Zeal.Shiyulin_Explorer.modules.file.pojo.FileUp;
import com.Zeal.Shiyulin_Explorer.modules.file.pojo.FileUpExample;
import com.Zeal.Shiyulin_Explorer.modules.file.service.FileService;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

/**
 * Created by Zeal on 2016/11/2.
 */
public class FileServiceImp implements FileService {
    @Autowired
    private FileUpMapper fileUpMapper;
    @Override
    public int insert(FileUp record) {
        return fileUpMapper.insert(record);
    }

    @Override
    public int updateByPrimaryKeySelective(FileUp record) {
        return fileUpMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public List<FileUp> selectByExample(FileUpExample example) {
        return fileUpMapper.selectByExample(example);
    }

    @Override
    public FileUp selectByPrimaryKey(Long id) {
        return fileUpMapper.selectByPrimaryKey(id);
    }

    @Override
    public int countByExample(FileUpExample example) {
        return fileUpMapper.countByExample(example);
    }

    @Override
    public int updateByPrimaryKey(FileUp record) {
        return fileUpMapper.updateByPrimaryKey(record);
    }

    @Override
    public int deleteByPrimaryKey(Long id) {
        return fileUpMapper.deleteByPrimaryKey(id);
    }
}
