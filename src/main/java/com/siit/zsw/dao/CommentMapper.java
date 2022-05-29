package com.siit.zsw.dao;// 直接赋值粘贴，删除CSDN的权限转载中文

import com.siit.zsw.pojo.Comment;

import java.util.List;

/**
 * @program: Newenergyvehicle
 * @description: 评论映射器
 * @author: Mr.flying
 * @create: 2022-05-29 21:28
 **/


public interface CommentMapper {

    public List<Comment> getComment();
}
