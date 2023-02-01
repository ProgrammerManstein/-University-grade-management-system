package com.example.javawebproject.model;

import java.io.Serializable;

public class sumcredits implements Serializable {
    private String Sno;
    private String Sname;
    private double sum;
    public sumcredits(){}
    public String getSno() {
        return Sno;
    }
    public void setSno(String number) {
        this.Sno = number;
    }
    public String getSname() {
        return Sname;
    }
    public void setSname(String sname) {
        this.Sname = sname;
    }
    public double getSum() {
        return sum;
    }
    public void setSum(double sum) {
        this.sum = sum;
    }

}
