package com.Zeal.Shiyulin_Explorer.modules.login.service;

import com.Zeal.Shiyulin_Explorer.modules.login.pojo.AuthUser;
import com.Zeal.Shiyulin_Explorer.modules.login.pojo.AuthUserExample;
import org.springframework.stereotype.Service;

/**
 * Created by Zeal on 2016/10/17.
 */
@Service
public interface UserLoginService {

    AuthUser getAuthUserById(Long id);

    AuthUser selectByName(String name);

    int insert(AuthUser record);

    int countByExample(AuthUserExample example);
}
