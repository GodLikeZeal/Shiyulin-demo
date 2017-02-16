package com.Zeal.Shiyulin_Explorer.modules.login.mapper;

import com.Zeal.Shiyulin_Explorer.modules.login.pojo.AuthUser;
import com.Zeal.Shiyulin_Explorer.modules.login.pojo.AuthUserExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface AuthUserMapper {
    int countByExample(AuthUserExample example);

    int deleteByExample(AuthUserExample example);

    int deleteByPrimaryKey(Long id);

    int insert(AuthUser record);

    int insertSelective(AuthUser record);

    List<AuthUser> selectByExample(AuthUserExample example);

    AuthUser selectByPrimaryKey(Long id);

    AuthUser selectByName(String name);

    int updateByExampleSelective(@Param("record") AuthUser record, @Param("example") AuthUserExample example);

    int updateByExample(@Param("record") AuthUser record, @Param("example") AuthUserExample example);

    int updateByPrimaryKeySelective(AuthUser record);

    int updateByPrimaryKey(AuthUser record);
}