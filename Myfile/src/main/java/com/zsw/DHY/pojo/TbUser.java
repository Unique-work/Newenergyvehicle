package com.zsw.DHY.pojo;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

/**
 * @program: Newenergyvehicle
 * @description:
 * @author: Mr.flying
 * @create: 2022-06-09 16:48
 **/

@Data
@Getter
@Setter
public class TbUser {
    private Integer userid;
    private String username;
    private  String password;
    private String sex;
    private String education;

}
