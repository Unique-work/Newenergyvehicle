package com.siit.zsw.pojo;// 直接赋值粘贴，删除CSDN的权限转载中文

import lombok.*;

import java.util.Date;
import java.util.List;

/**
 * @program: Newenergyvehicle
 * @description: 评论
 * @author: Mr.flying
 * @create: 2022-05-28 21:04
 **/

@Data
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class Comment {

    private int id;

    private String text;

    private int contentid;

    private Date time;

    private String userid;

    private User user;

}
