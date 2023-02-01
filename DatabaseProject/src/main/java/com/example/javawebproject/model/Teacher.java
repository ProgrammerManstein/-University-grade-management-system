package com.example.javawebproject.model;

import java.io.Serializable;

public class Teacher implements Serializable {
    private String Tno;
    private String Ttitle;
    private String Tphone;
    public Teacher(){}
    public String getTno() {
        return Tno;
    }
    public void setTno(String number) {
        this.Tno = number;
    }
    public String getTtitle() {
        return Ttitle;
    }
    public void setTtitle(String ttitle) {
        this.Ttitle = ttitle;
    }
    public String getTphone() {
        return Tphone;
    }
    public void setTphone(String tphone) {
        this.Tphone = tphone;
    }

}
