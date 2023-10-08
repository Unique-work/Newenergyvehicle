package com.siit.zsw.dao;

import com.siit.zsw.pojo.Content;
import com.siit.zsw.pojo.ContentPraise;

import java.util.Map;

public interface ContentPraiseMapper {
    public void saveContentPraise(ContentPraise contentpraise);

    public ContentPraise getContentPraiseByUserId(Map<String,Object> map);
    public Content getContentById(int id);

    public void updateContent(Content content);

}
