package com.example.javawebproject.dao;

import com.example.javawebproject.model.classcourse;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class classcourseDaoImpl implements classcourseDao{

    // 按id查询客户记录
    public  ArrayList<classcourse> findByNo (String num) throws DaoException{
        ArrayList<classcourse> lists = new ArrayList<classcourse>();

        String sql = "SELECT *" +
                " FROM lvr_classcourse18 WHERE 班级编号 = ?";
        try
        {
            Connection conn = getConnection();
            PreparedStatement pstmt = conn.prepareStatement(sql);
            pstmt.setString(1,num);
            ResultSet rst = pstmt.executeQuery();
            while(rst.next()){
                classcourse list = new classcourse();
                list.setAno(rst.getString(1));
                list.setAname(rst.getString(2));
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
    public  ArrayList<classcourse> findAll () throws DaoException{
        ArrayList<classcourse> lists = new ArrayList<classcourse>();

        String sql = "SELECT *" +
                " FROM lvr_classcourse18";
        try
        {
            Connection conn = getConnection();
            PreparedStatement pstmt = conn.prepareStatement(sql);
            ResultSet rst = pstmt.executeQuery();
            while(rst.next()){
                classcourse list = new classcourse();
                list.setAno(rst.getString(1));
                list.setAname(rst.getString(2));
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
