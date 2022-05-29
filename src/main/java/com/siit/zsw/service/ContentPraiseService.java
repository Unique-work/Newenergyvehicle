package com.siit.zsw.service;

import com.siit.zsw.pojo.ContentPraise;

import java.util.Map;

public interface ContentPraiseService {
    public void saveContentPraise(ContentPraise contentpraise);
    public ContentPraise getContentPraiseByUserId(Map<String,Object> map);
}
