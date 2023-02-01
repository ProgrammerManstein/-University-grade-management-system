package com.example.javawebproject.dao;

import com.example.javawebproject.model.teachercourse;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class teachercourseDaoImpl implements teachercourseDao{

    // 按id查询客户记录
    public  ArrayList<teachercourse> findByNo (String num) throws DaoException{
        ArrayList<teachercourse> lists = new ArrayList<teachercourse>();

        String sql = "SELECT *" +
                " FROM lvr_teachercourse18 WHERE 教师编号 = ?";
        try
        {
            Connection conn = getConnection();
            PreparedStatement pstmt = conn.prepareStatement(sql);
            pstmt.setString(1,num);
            ResultSet rst = pstmt.executeQuery();
            while(rst.next()){
                teachercourse list = new teachercourse();
                list.setTno(rst.getString(1));
                list.setTname(rst.getString(2));
                list.setCno(rst.getString(3));
                list.setCname(rst.getString(4));
                list.setCcredits(rst.getInt(5));
                list.setCclasshour(rst.getInt(6));
                list.setCterm(rst.getInt(7));
                list.setCexamineway(rst.getInt(8));
                lists.add(list);
            }
            conn.close();
            return lists;
        }catch(SQLException e){
            e.printStackTrace();
            return null;
        }
    }
    public  ArrayList<teachercourse> findByTerm (int num,String id) throws DaoException{
        ArrayList<teachercourse> lists = new ArrayList<teachercourse>();

        String sql = "SELECT *" +
                " FROM lvr_teachercourse18 WHERE 开设学期 = ? AND 教师编号=?";
        try
        {
            Connection conn = getConnection();
            PreparedStatement pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1,num);
            pstmt.setString(2,id);
            ResultSet rst = pstmt.executeQuery();
            while(rst.next()){
                teachercourse list = new teachercourse();
                list.setTno(rst.getString(1));
                list.setTname(rst.getString(2));
                list.setCno(rst.getString(3));
                list.setCname(rst.getString(4));
                list.setCcredits(rst.getInt(5));
                list.setCclasshour(rst.getInt(6));
                list.setCterm(rst.getInt(7));
                list.setCexamineway(rst.getInt(8));
                lists.add(list);
            }
            conn.close();
            return lists;
        }catch(SQLException e){
            e.printStackTrace();
            return null;
        }
    }
    public  ArrayList<teachercourse> findAll () throws DaoException{
        ArrayList<teachercourse> lists = new ArrayList<teachercourse>();

        String sql = "SELECT *" +
                " FROM lvr_teachercourse18";
        try
        {
            Connection conn = getConnection();
            PreparedStatement pstmt = conn.prepareStatement(sql);
            ResultSet rst = pstmt.executeQuery();
            while(rst.next()){
                teachercourse list = new teachercourse();
                list.setTno(rst.getString(1));
                list.setTname(rst.getString(2));
                list.setCno(rst.getString(3));
                list.setCname(rst.getString(4));
                list.setCcredits(rst.getInt(5));
                list.setCclasshour(rst.getInt(6));
                list.setCterm(rst.getInt(7));
                list.setCexamineway(rst.getInt(8));
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
