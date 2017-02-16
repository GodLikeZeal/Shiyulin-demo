package com.Zeal.Shiyulin_Explorer.modules.zd.service;

import com.Zeal.Shiyulin_Explorer.modules.zd.pojo.*;

import java.util.List;

/**
 * Created by Zeal on 2016/11/11.
 */
public interface ZdService {

    //文件类型字典
    List<ZdFileType> selectByExample(ZdFileTypeExample example);

    //等级字典
    List<ZdLevel> selectByExample(ZdLevelExample example);

    //角色字典
    List<ZdRole> selectByExample(ZdRoleExample example);

    //性别字典
    List<ZdSex> selectByExample(ZdSexExample example);
}
