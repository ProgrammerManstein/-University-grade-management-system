package com.example.javawebproject.model;

public class classcourse {
    private String Ano;
    private String Aname;
    private String Cno;
    private String Cname;
    private int Ccredits;
    private int Cclasshour;
    private int Cterm;
    private int Cexamineway;
    public classcourse(){}
    public String getAname() {
        return Aname;
    }
    public void setAname(String aname) {
        this.Aname = aname;
    }
    public int getCcredits() {
        return Ccredits;
    }
    public void setCcredits(int number) {
        this.Ccredits = number;
    }
    public String getAno() {
        return Ano;
    }
    public void setAno(String ano) {
        this.Ano = ano;
    }
    public String getCno() {
        return Cno;
    }
    public void setCno(String cno) {
        this.Cno = cno;
    }
    public String getCname() {
        return Cname;
    }
    public void setCname(String cname) {
        this.Cname = cname;
    }
    public int getCclasshour() {
        return Cclasshour;
    }
    public void setCclasshour(int Class) {
        this.Cclasshour = Class;
    }
    public void setCterm(int s){this.Cterm =s;}
    public void setCexamineway(int s){this.Cexamineway =s;}
    public int getCterm(){return Cterm;}
    public int getCexamineway(){return (Cexamineway);}
}
