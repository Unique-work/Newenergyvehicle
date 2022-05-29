package com.siit.zsw.service.impl;// 直接赋值粘贴，删除CSDN的权限转载中文

import com.siit.zsw.dao.ContentMapper;
import com.siit.zsw.pojo.Content;
import com.siit.zsw.service.ContentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @program: Newenergyvehicle
 * @description:
 * @author: Mr.flying
 * @create: 2022-05-28 21:51
 **/

@Service
public class ContentServiceImpl implements ContentService {
    @Autowired
    private ContentMapper contentMapper;
    @Override
    public void saveContent(Content content){
        contentMapper.saveContent(content);
    }

    @Override
    public List<Content> getContentByfid(String userid) {
        return contentMapper.getContentByfid(userid);
    }

}
