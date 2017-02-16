package com.Zeal.Shiyulin_Explorer.modules.zd.mapper;

import com.Zeal.Shiyulin_Explorer.modules.zd.pojo.ZdRole;
import com.Zeal.Shiyulin_Explorer.modules.zd.pojo.ZdRoleExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface ZdRoleMapper {
    int countByExample(ZdRoleExample example);

    int deleteByExample(ZdRoleExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(ZdRole record);

    int insertSelective(ZdRole record);

    List<ZdRole> selectByExample(ZdRoleExample example);

    ZdRole selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") ZdRole record, @Param("example") ZdRoleExample example);

    int updateByExample(@Param("record") ZdRole record, @Param("example") ZdRoleExample example);

    int updateByPrimaryKeySelective(ZdRole record);

    int updateByPrimaryKey(ZdRole record);
}