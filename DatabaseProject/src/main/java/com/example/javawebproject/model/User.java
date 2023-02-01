package com.example.javawebproject.model;

import java.io.Serializable;

public class User implements Serializable {
    private String Uname;
    private String Uno;
    private int Uage;
    private String Usex;
    private String Upasswords;
    private int Uchar;
    public User(){}
    public String getUno() {
        return Uno;
    }
    public void setUno(String uno) {
        this.Uno = uno;
    }
    public int getUage() {
        return Uage;
    }
    public void setUage(int number) {
        this.Uage = number;
    }
    public String getUname() {
        return Uname;
    }
    public void setUname(String uname) {
        this.Uname = uname;
    }
    public String getUsex() {
        return Usex;
    }
    public void setUsex(String usex) {
        this.Usex = usex;
    }
    public String getUpasswords() {
        return Upasswords;
    }
    public void setUpasswords(String upasswords) {
        this.Upasswords = upasswords;
    }
    public int getUchar() {
        return Uchar;
    }
    public void setUchar(int Class) {
        this.Uchar = Class;
    }
}
