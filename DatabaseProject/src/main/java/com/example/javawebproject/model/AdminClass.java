package com.example.javawebproject.model;

import java.io.Serializable;

public class AdminClass implements Serializable {
    private String Ano;
    private String Aname;
    private String Mno;
    public AdminClass(){}
    public String getAno() {
        return Ano;
    }
    public void setAno(String ano) {
        this.Ano = ano;
    }
    public String getAname() {
        return Aname;
    }
    public void setAname(String aname) {
        this.Aname = aname;
    }
    public String getMno() {
        return Mno;
    }
    public void setMno(String mno) {
        this.Mno = mno;
    }
}
