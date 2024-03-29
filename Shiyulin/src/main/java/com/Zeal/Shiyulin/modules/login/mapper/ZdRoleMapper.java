package com.Zeal.Shiyulin.modules.login.mapper;

import com.Zeal.Shiyulin.modules.login.pojo.ZdRole;
import com.Zeal.Shiyulin.modules.login.pojo.ZdRoleExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface ZdRoleMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table zd_role
     *
     * @mbggenerated Mon Oct 03 21:52:04 CST 2016
     */
    int countByExample(ZdRoleExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table zd_role
     *
     * @mbggenerated Mon Oct 03 21:52:04 CST 2016
     */
    int deleteByExample(ZdRoleExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table zd_role
     *
     * @mbggenerated Mon Oct 03 21:52:04 CST 2016
     */
    int deleteByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table zd_role
     *
     * @mbggenerated Mon Oct 03 21:52:04 CST 2016
     */
    int insert(ZdRole record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table zd_role
     *
     * @mbggenerated Mon Oct 03 21:52:04 CST 2016
     */
    int insertSelective(ZdRole record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table zd_role
     *
     * @mbggenerated Mon Oct 03 21:52:04 CST 2016
     */
    List<ZdRole> selectByExample(ZdRoleExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table zd_role
     *
     * @mbggenerated Mon Oct 03 21:52:04 CST 2016
     */
    ZdRole selectByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table zd_role
     *
     * @mbggenerated Mon Oct 03 21:52:04 CST 2016
     */
    int updateByExampleSelective(@Param("record") ZdRole record, @Param("example") ZdRoleExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table zd_role
     *
     * @mbggenerated Mon Oct 03 21:52:04 CST 2016
     */
    int updateByExample(@Param("record") ZdRole record, @Param("example") ZdRoleExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table zd_role
     *
     * @mbggenerated Mon Oct 03 21:52:04 CST 2016
     */
    int updateByPrimaryKeySelective(ZdRole record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table zd_role
     *
     * @mbggenerated Mon Oct 03 21:52:04 CST 2016
     */
    int updateByPrimaryKey(ZdRole record);
}