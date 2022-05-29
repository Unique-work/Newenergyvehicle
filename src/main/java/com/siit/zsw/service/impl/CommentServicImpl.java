package com.siit.zsw.service.impl;// 直接赋值粘贴，删除CSDN的权限转载中文

import com.siit.zsw.dao.CommentMapper;
import com.siit.zsw.pojo.Comment;
import com.siit.zsw.service.CommentServic;
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
public class CommentServicImpl implements CommentServic {
    @Autowired
    private CommentMapper commentMapper;
    @Override
    public List<Comment> getComment() {
        return commentMapper.getComment();
    }
}
