package com.example.javawebproject.dao;

import com.example.javawebproject.model.stuscore;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class stuscoreDaoImpl implements stuscoreDao{

    // 按id查询客户记录
    public  ArrayList<stuscore> findByNo (String num) throws DaoException{
        ArrayList<stuscore> lists = new ArrayList<stuscore>();

        String sql = "SELECT *" +
                " FROM lvr_stuscore18 WHERE 学号 = ?";
        try
        {
            Connection conn = getConnection();
            PreparedStatement pstmt = conn.prepareStatement(sql);
            pstmt.setString(1,num);
            ResultSet rst = pstmt.executeQuery();
            while(rst.next()){
                stuscore list = new stuscore();
                list.setSno(rst.getString(1));
                list.setSname(rst.getString(2));
                list.setCno(rst.getString(3));
                list.setCname(rst.getString(4));
                list.setCcredits(rst.getInt(5));
                list.setCclasshour(rst.getInt(6));
                list.setCterm(rst.getInt(7));
                list.setCexamineway(rst.getInt(8));
                list.setScore(rst.getInt(9));
                lists.add(list);
            }
            conn.close();
            return lists;
        }catch(SQLException e){
            e.printStackTrace();
            return null;
        }
    }
    public  ArrayList<stuscore> findByCno (String num) throws DaoException{
        ArrayList<stuscore> lists = new ArrayList<stuscore>();

        String sql = "SELECT *" +
                " FROM lvr_stuscore18 WHERE 课程编号 = ?";
        try
        {
            Connection conn = getConnection();
            PreparedStatement pstmt = conn.prepareStatement(sql);
            pstmt.setString(1,num);
            ResultSet rst = pstmt.executeQuery();
            while(rst.next()){
                stuscore list = new stuscore();
                list.setSno(rst.getString(1));
                list.setSname(rst.getString(2));
                list.setCno(rst.getString(3));
                list.setCname(rst.getString(4));
                list.setCcredits(rst.getInt(5));
                list.setCclasshour(rst.getInt(6));
                list.setCterm(rst.getInt(7));
                list.setCexamineway(rst.getInt(8));
                list.setScore(rst.getInt(9));
                lists.add(list);
            }
            conn.close();
            return lists;
        }catch(SQLException e){
            e.printStackTrace();
            return null;
        }
    }
    public  ArrayList<stuscore> findByTerm (int num,String id) throws DaoException{
        ArrayList<stuscore> lists = new ArrayList<stuscore>();

        String sql = "SELECT *" +
                " FROM lvr_stuscore18 WHERE 开设学期 = ? AND 学号=?";
        try
        {
            Connection conn = getConnection();
            PreparedStatement pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1,num);
            pstmt.setString(2,id);
            ResultSet rst = pstmt.executeQuery();
            while(rst.next()){
                stuscore list = new stuscore();
                list.setSno(rst.getString(1));
                list.setSname(rst.getString(2));
                list.setCno(rst.getString(3));
                list.setCname(rst.getString(4));
                list.setCcredits(rst.getInt(5));
                list.setCclasshour(rst.getInt(6));
                list.setCterm(rst.getInt(7));
                list.setCexamineway(rst.getInt(8));
                list.setScore(rst.getInt(9));
                lists.add(list);
            }
            conn.close();
            return lists;
        }catch(SQLException e){
            e.printStackTrace();
            return null;
        }
    }
    public  ArrayList<stuscore> findAll () throws DaoException{
        ArrayList<stuscore> lists = new ArrayList<stuscore>();

        String sql = "SELECT *" +
                " FROM lvr_stuscore18";
        try
        {
            Connection conn = getConnection();
            PreparedStatement pstmt = conn.prepareStatement(sql);
            ResultSet rst = pstmt.executeQuery();
            while(rst.next()){
                stuscore list = new stuscore();
                list.setSno(rst.getString(1));
                list.setSname(rst.getString(2));
                list.setCno(rst.getString(3));
                list.setCname(rst.getString(4));
                list.setCcredits(rst.getInt(5));
                list.setCclasshour(rst.getInt(6));
                list.setCterm(rst.getInt(7));
                list.setCexamineway(rst.getInt(8));
                list.setScore(rst.getInt(9));
                lists.add(list);
            }
            conn.close();
            return lists;
        }catch(SQLException e){
            e.printStackTrace();
            return null;
        }
    }
}
