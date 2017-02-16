package com.Zeal.Shiyulin_Explorer.modules.login.mapper;

import com.Zeal.Shiyulin_Explorer.modules.login.pojo.AuthRoleFunction;
import com.Zeal.Shiyulin_Explorer.modules.login.pojo.AuthRoleFunctionExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface AuthRoleFunctionMapper {
    int countByExample(AuthRoleFunctionExample example);

    int deleteByExample(AuthRoleFunctionExample example);

    int deleteByPrimaryKey(Long id);

    int insert(AuthRoleFunction record);

    int insertSelective(AuthRoleFunction record);

    List<AuthRoleFunction> selectByExample(AuthRoleFunctionExample example);

    AuthRoleFunction selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") AuthRoleFunction record, @Param("example") AuthRoleFunctionExample example);

    int updateByExample(@Param("record") AuthRoleFunction record, @Param("example") AuthRoleFunctionExample example);

    int updateByPrimaryKeySelective(AuthRoleFunction record);

    int updateByPrimaryKey(AuthRoleFunction record);
}