package com.siit.zsw.service;// 直接赋值粘贴，删除CSDN的权限转载中文

import com.siit.zsw.pojo.Comment;

import java.util.List;

/**
 * @program: Newenergyvehicle
 * @description: CommentServic
 * @author: Mr.flying
 * @create: 2022-05-29 21:39
 **/


public interface CommentService {
    public List<Comment> getComment();
    public void saveComment(Comment comment);
}
