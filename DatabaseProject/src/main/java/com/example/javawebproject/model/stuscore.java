package com.example.javawebproject.model;

import java.io.Serializable;

public class stuscore implements Serializable {
    private String Sname;
    private String Sno;
    private String Cno;
    private String Cname;
    private int Ccredits;
    private int Cclasshour;
    private int Cterm;
    private int Cexamineway;
    private int Score;
    public stuscore(){}
    public String getCno()
    {
        return(Cno);
    }
    public int getCcredits()
    {
        return(Ccredits);
    }
    public String getCname(){return(Cname);}
    public int getCclasshour(){return Cclasshour;}
    public int getCterm(){return Cterm;}
    public int getCexamineway(){return (Cexamineway);}
    public void setCno(String s)
    {
        this.Cno = s;
    }
    public void setCcredits(int s)
    {
        this.Ccredits = s;
    }
    public void setCname(String s){this.Cname =s;}
    public void setCclasshour(int s){this.Cclasshour =s;}
    public void setCterm(int s){this.Cterm =s;}
    public void setCexamineway(int s){this.Cexamineway =s;}

    public String getSno() {
        return Sno;
    }
    public void setSno(String uno) {
        this.Sno = uno;
    }
    public int getScore() {
        return Score;
    }
    public void setScore(int uno) {
        this.Score = uno;
    }
    public String getSname() {
        return Sname;
    }
    public void setSname(String uname) {
        this.Sname = uname;
    }
}
