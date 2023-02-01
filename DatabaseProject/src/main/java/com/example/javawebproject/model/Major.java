package com.example.javawebproject.model;

import java.sql.Timestamp;

public class Major {
    private String Mno;
    private String Mname;

    public Major() {
    }

    public String getMno()
    {
        return(Mno);
    }
    public String getMname(){return (Mname);}

    public void setMno(String s)
    {
        this.Mno = s;
    }
    public void setMname(String s){this.Mname =s;}
}