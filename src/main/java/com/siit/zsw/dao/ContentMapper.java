package com.siit.zsw.dao;// 直接赋值粘贴，删除CSDN的权限转载中文

import com.siit.zsw.pojo.Content;
import com.siit.zsw.pojo.ContentPraise;

import java.util.List;

/**
 * @program: Newenergyvehicle
 * @description: 内容Mapper
 * @author: Mr.flying
 * @create: 2022-05-28 21:42
 **/


public interface ContentMapper {
    public void saveContent(Content content);
    public List<Content> getContentByfid(String userid);
    public Content getContentById(int id);
    public void updateContent(Content content);

}
