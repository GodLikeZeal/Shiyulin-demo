package com.Zeal.Shiyulin.modules.login.mapper;

import com.Zeal.Shiyulin.modules.login.pojo.UserLogin;
import com.Zeal.Shiyulin.modules.login.pojo.UserLoginExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface UserLoginMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table user_login
     *
     * @mbggenerated Mon Oct 03 21:52:04 CST 2016
     */
    int countByExample(UserLoginExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table user_login
     *
     * @mbggenerated Mon Oct 03 21:52:04 CST 2016
     */
    int deleteByExample(UserLoginExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table user_login
     *
     * @mbggenerated Mon Oct 03 21:52:04 CST 2016
     */
    int deleteByPrimaryKey(String username);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table user_login
     *
     * @mbggenerated Mon Oct 03 21:52:04 CST 2016
     */
    int insert(UserLogin record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table user_login
     *
     * @mbggenerated Mon Oct 03 21:52:04 CST 2016
     */
    int insertSelective(UserLogin record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table user_login
     *
     * @mbggenerated Mon Oct 03 21:52:04 CST 2016
     */
    List<UserLogin> selectByExample(UserLoginExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table user_login
     *
     * @mbggenerated Mon Oct 03 21:52:04 CST 2016
     */
    UserLogin selectByPrimaryKey(String username);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table user_login
     *
     * @mbggenerated Mon Oct 03 21:52:04 CST 2016
     */
    int updateByExampleSelective(@Param("record") UserLogin record, @Param("example") UserLoginExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table user_login
     *
     * @mbggenerated Mon Oct 03 21:52:04 CST 2016
     */
    int updateByExample(@Param("record") UserLogin record, @Param("example") UserLoginExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table user_login
     *
     * @mbggenerated Mon Oct 03 21:52:04 CST 2016
     */
    int updateByPrimaryKeySelective(UserLogin record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table user_login
     *
     * @mbggenerated Mon Oct 03 21:52:04 CST 2016
     */
    int updateByPrimaryKey(UserLogin record);
}