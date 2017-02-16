package com.Zeal.Shiyulin.modules.login.mapper;

import com.Zeal.Shiyulin.modules.login.pojo.ZdSex;
import com.Zeal.Shiyulin.modules.login.pojo.ZdSexExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface ZdSexMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table zd_sex
     *
     * @mbggenerated Mon Oct 03 21:52:04 CST 2016
     */
    int countByExample(ZdSexExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table zd_sex
     *
     * @mbggenerated Mon Oct 03 21:52:04 CST 2016
     */
    int deleteByExample(ZdSexExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table zd_sex
     *
     * @mbggenerated Mon Oct 03 21:52:04 CST 2016
     */
    int deleteByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table zd_sex
     *
     * @mbggenerated Mon Oct 03 21:52:04 CST 2016
     */
    int insert(ZdSex record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table zd_sex
     *
     * @mbggenerated Mon Oct 03 21:52:04 CST 2016
     */
    int insertSelective(ZdSex record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table zd_sex
     *
     * @mbggenerated Mon Oct 03 21:52:04 CST 2016
     */
    List<ZdSex> selectByExample(ZdSexExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table zd_sex
     *
     * @mbggenerated Mon Oct 03 21:52:04 CST 2016
     */
    ZdSex selectByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table zd_sex
     *
     * @mbggenerated Mon Oct 03 21:52:04 CST 2016
     */
    int updateByExampleSelective(@Param("record") ZdSex record, @Param("example") ZdSexExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table zd_sex
     *
     * @mbggenerated Mon Oct 03 21:52:04 CST 2016
     */
    int updateByExample(@Param("record") ZdSex record, @Param("example") ZdSexExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table zd_sex
     *
     * @mbggenerated Mon Oct 03 21:52:04 CST 2016
     */
    int updateByPrimaryKeySelective(ZdSex record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table zd_sex
     *
     * @mbggenerated Mon Oct 03 21:52:04 CST 2016
     */
    int updateByPrimaryKey(ZdSex record);
}