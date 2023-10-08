package com.siit.zsw.dao;

import com.siit.zsw.pojo.carfriend;
import com.siit.zsw.pojo.carfriendExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

/**
 * @author 张世文
 */
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
    public carfriend getListByTId(Map<String,String> map);

    public void saveCarFriend(carfriend carfriend);
    public List<carfriend> getFriendByUserId(String userid);
    public int getCount(String userid);
}


