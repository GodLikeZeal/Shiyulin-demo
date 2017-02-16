package com.Zeal.Shiyulin_Explorer.modules.login.serviceImp;

import com.Zeal.Shiyulin_Explorer.modules.login.mapper.AuthUserMapper;
import com.Zeal.Shiyulin_Explorer.modules.login.pojo.AuthUser;
import com.Zeal.Shiyulin_Explorer.modules.login.pojo.AuthUserExample;
import com.Zeal.Shiyulin_Explorer.modules.login.service.UserLoginService;
import org.springframework.beans.factory.annotation.Autowired;

/**
 * Created by Zeal on 2016/10/17.
 */

public class UserLoginServiceImp implements UserLoginService {
    @Autowired
    private AuthUserMapper authUserMapper;

    @Override
    public AuthUser getAuthUserById(Long id) {
        return authUserMapper.selectByPrimaryKey(id);
    }

    @Override
    public AuthUser selectByName(String name) {
        return authUserMapper.selectByName(name);
    }

    @Override
    public int insert(AuthUser record) {
        return authUserMapper.insert(record );
    }

    @Override
    public int countByExample(AuthUserExample example) {
        return authUserMapper.countByExample(example);
    }
}
