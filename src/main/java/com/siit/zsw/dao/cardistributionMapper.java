package com.siit.zsw.dao;

import com.siit.zsw.pojo.cardistribution;
import com.siit.zsw.pojo.cardistributionExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface cardistributionMapper {
    long countByExample(cardistributionExample example);

    int deleteByExample(cardistributionExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(cardistribution record);

    int insertSelective(cardistribution record);

    List<cardistribution> selectByExample(cardistributionExample example);

    cardistribution selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") cardistribution record, @Param("example") cardistributionExample example);

    int updateByExample(@Param("record") cardistribution record, @Param("example") cardistributionExample example);

    int updateByPrimaryKeySelective(cardistribution record);

    int updateByPrimaryKey(cardistribution record);
}