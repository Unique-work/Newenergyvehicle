package com.siit.zsw.service.impl;// 直接赋值粘贴，删除CSDN的权限转载中文

import com.siit.zsw.dao.CommentMapper;
import com.siit.zsw.pojo.Comment;

import com.siit.zsw.service.CommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @program: Newenergyvehicle
 * @description:
 * @author: Mr.flying
 * @create: 2022-05-29 21:40
 **/

@Service
public class CommentServiceImpl implements CommentService {
    @Autowired
    private CommentMapper commentMapper;
    @Override
    public List<Comment> getComment() {
        return commentMapper.getComment();
    }

    @Override
    public void saveComment(Comment comment) {
        commentMapper.saveComment(comment);
    }
}
