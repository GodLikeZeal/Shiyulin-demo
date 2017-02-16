package com.Zeal.Shiyulin_Explorer.modules.zd.serviceImp;

import com.Zeal.Shiyulin_Explorer.modules.zd.mapper.ZdFileTypeMapper;
import com.Zeal.Shiyulin_Explorer.modules.zd.mapper.ZdLevelMapper;
import com.Zeal.Shiyulin_Explorer.modules.zd.mapper.ZdRoleMapper;
import com.Zeal.Shiyulin_Explorer.modules.zd.mapper.ZdSexMapper;
import com.Zeal.Shiyulin_Explorer.modules.zd.pojo.*;
import com.Zeal.Shiyulin_Explorer.modules.zd.service.ZdService;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

/**
 * Created by Zeal on 2016/11/11.
 */
public class ZdServiceImp implements ZdService {

    @Autowired
    private ZdFileTypeMapper zdFileTypeMapper;
    @Autowired
    private ZdLevelMapper zdLevelMapper;
    @Autowired
    private ZdRoleMapper zdRoleMapper;
    @Autowired
    private ZdSexMapper zdSexMapper;

    @Override
    public List<ZdFileType> selectByExample(ZdFileTypeExample example) {
        return zdFileTypeMapper.selectByExample(example);
    }

    @Override
    public List<ZdLevel> selectByExample(ZdLevelExample example) {
        return zdLevelMapper.selectByExample(example);
    }

    @Override
    public List<ZdRole> selectByExample(ZdRoleExample example) {
        return zdRoleMapper.selectByExample(example);
    }

    @Override
    public List<ZdSex> selectByExample(ZdSexExample example) {
        return zdSexMapper.selectByExample(example);
    }
}
