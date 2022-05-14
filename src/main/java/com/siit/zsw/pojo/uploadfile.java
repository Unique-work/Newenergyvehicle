package com.siit.zsw.pojo;

import java.util.Date;

public class uploadfile {
    private Integer id;

    private String filename;

    private String filepath;

    private String filetype;

    private Date filetime;

    private String uploadname;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getFilename() {
        return filename;
    }

    public void setFilename(String filename) {
        this.filename = filename == null ? null : filename.trim();
    }

    public String getFilepath() {
        return filepath;
    }

    public void setFilepath(String filepath) {
        this.filepath = filepath == null ? null : filepath.trim();
    }

    public String getFiletype() {
        return filetype;
    }

    public void setFiletype(String filetype) {
        this.filetype = filetype == null ? null : filetype.trim();
    }

    public Date getFiletime() {
        return filetime;
    }

    public void setFiletime(Date filetime) {
        this.filetime = filetime;
    }

    public String getUploadname() {
        return uploadname;
    }

    public void setUploadname(String uploadname) {
        this.uploadname = uploadname == null ? null : uploadname.trim();
    }
}