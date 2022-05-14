package com.siit.zsw.dao;

import com.siit.zsw.pojo.uploadfile;
import com.siit.zsw.pojo.uploadfileExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface uploadfileMapper {
    long countByExample(uploadfileExample example);

    int deleteByExample(uploadfileExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(uploadfile record);

    int insertSelective(uploadfile record);

    List<uploadfile> selectByExample(uploadfileExample example);

    uploadfile selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") uploadfile record, @Param("example") uploadfileExample example);

    int updateByExample(@Param("record") uploadfile record, @Param("example") uploadfileExample example);

    int updateByPrimaryKeySelective(uploadfile record);

    int updateByPrimaryKey(uploadfile record);
}