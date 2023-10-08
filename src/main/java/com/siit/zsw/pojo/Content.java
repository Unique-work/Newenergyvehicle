package com.siit.zsw.pojo;// 直接赋值粘贴，删除CSDN的权限转载中文

import lombok.*;

import java.util.Date;
import java.util.List;

/**
 * @program: Newenergyvehicle
 * @description: 内容
 * @author: Mr.flying
 * @create: 2022-05-28 21:04
 **/

@Data
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class Content {
    private int id;

    private String txt;

    private int praise;

    private int comments;

    private Date releasetime;

    private int carfriendid;

    private String userid;

    private List<Comment> comment;

    private User user;

}
