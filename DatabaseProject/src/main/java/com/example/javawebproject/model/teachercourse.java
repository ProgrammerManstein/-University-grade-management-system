package com.example.javawebproject.model;

public class teachercourse {
    private String Tname;
    private String Tno;
    private String Cno;
    private String Cname;
    private int Ccredits;
    private int Cclasshour;
    private int Cterm;
    private int Cexamineway;
    public teachercourse() {
    }
    public String getTno() {
        return Tno;
    }
    public void setTno(String uno) {
        this.Tno = uno;
    }
    public String getTname() {
        return Tname;
    }
    public void setTname(String uno) {
        this.Tname = uno;
    }
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
}
