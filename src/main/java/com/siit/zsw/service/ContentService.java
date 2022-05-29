package com.siit.zsw.service;


import com.siit.zsw.pojo.Content;

import java.util.List;

public interface ContentService {
    public void saveContent(Content content);
    public List<Content> getContentByfid(String userid);
}
