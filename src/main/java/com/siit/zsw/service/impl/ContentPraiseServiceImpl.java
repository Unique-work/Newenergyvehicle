package com.siit.zsw.service.impl;// 直接赋值粘贴，删除CSDN的权限转载中文

import com.siit.zsw.dao.ContentPraiseMapper;
import com.siit.zsw.pojo.ContentPraise;
import com.siit.zsw.service.ContentPraiseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Map;

/**
 * @program: Newenergyvehicle
 * @description:
 * @author: Mr.flying
 * @create: 2022-05-29 23:30
 **/

@Service
public class ContentPraiseServiceImpl implements ContentPraiseService {
    @Autowired
    private ContentPraiseMapper contentpraiseMapper;

    @Override
    public void saveContentPraise(ContentPraise contentpraise) {
        contentpraiseMapper.saveContentPraise(contentpraise);

    }

    @Override
    public ContentPraise getContentPraiseByUserId(Map<String, Object> map) {
        return contentpraiseMapper.getContentPraiseByUserId(map);
    }
}
