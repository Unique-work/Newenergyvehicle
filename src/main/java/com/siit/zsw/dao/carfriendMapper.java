package com.siit.zsw.dao;

import com.siit.zsw.pojo.carfriend;
import com.siit.zsw.pojo.carfriendExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface carfriendMapper {
    long countByExample(carfriendExample example);

    int deleteByExample(carfriendExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(carfriend record);

    int insertSelective(carfriend record);

    List<carfriend> selectByExample(carfriendExample example);

    carfriend selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") carfriend record, @Param("example") carfriendExample example);

    int updateByExample(@Param("record") carfriend record, @Param("example") carfriendExample example);

    int updateByPrimaryKeySelective(carfriend record);

    int updateByPrimaryKey(carfriend record);
}