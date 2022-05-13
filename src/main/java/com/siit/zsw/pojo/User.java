package com.siit.zsw.pojo;

import java.util.Date;

//TODO
public class User {
    private String id;
   private String username;
   private String password;
   private String createtime;
   private String nickname;
   private String birthdate;
   private String sex;
   private Date dltime;
   private String hpic;
   private int usertype;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getCreatetime() {
        return createtime;
    }

    public void setCreatetime(String createtime) {
        this.createtime = createtime;
    }

    public String getNickname() {
        return nickname;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname;
    }


    public String getBirthdate() {
        return birthdate;
    }

    public void setBirthdate(String birthdate) {
        this.birthdate = birthdate;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public Date getDltime() {
        return dltime;
    }

    public void setDltime(Date dltime) {
        this.dltime = dltime;
    }

    public String getHpic() {
        return hpic;
    }

    public void setHpic(String hpic) {
        this.hpic = hpic;
    }

    public int getUsertype() {
        return usertype;
    }

    public void setUsertype(int usertype) {
        this.usertype = usertype;
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", username='" + username + '\'' +
                ", password='" + password + '\'' +
                ", createtime='" + createtime + '\'' +
                ", nickname='" + nickname + '\'' +
                ", birthdata='" + birthdate + '\'' +
                ", sex='" + sex + '\'' +
                ", dltime=" + dltime +
                ", hpic='" + hpic + '\'' +
                ", usertype=" + usertype +
                '}';
    }
}
