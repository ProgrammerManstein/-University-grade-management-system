package com.example.javawebproject.dao;

import com.example.javawebproject.model.sumcredits;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class sumcreditsDaoImpl implements sumcreditsDao{

    // 按id查询客户记录
    public  ArrayList<sumcredits> findByNo (String num) throws DaoException{
        ArrayList<sumcredits> lists = new ArrayList<sumcredits>();

        String sql = "SELECT *" +
                " FROM lvr_sumcredits18 WHERE 学号 = ?";
        try
        {
            Connection conn = getConnection();
            PreparedStatement pstmt = conn.prepareStatement(sql);
            pstmt.setString(1,num);
            ResultSet rst = pstmt.executeQuery();
            while(rst.next()){
                sumcredits list = new sumcredits();
                list.setSno(rst.getString(1));
                list.setSname(rst.getString(2));
                list.setSum(rst.getDouble(3));
                lists.add(list);
            }
            conn.close();
            return lists;
        }catch(SQLException e){
            e.printStackTrace();
            return null;
        }
    }
    public  ArrayList<sumcredits> findAll () throws DaoException{
        ArrayList<sumcredits> lists = new ArrayList<sumcredits>();

        String sql = "SELECT *" +
                " FROM lvr_sumcredits18";
        try
        {
            Connection conn = getConnection();
            PreparedStatement pstmt = conn.prepareStatement(sql);
            ResultSet rst = pstmt.executeQuery();
            while(rst.next()){
                sumcredits list = new sumcredits();
                list.setSno(rst.getString(1));
                list.setSname(rst.getString(2));
                list.setSum(rst.getDouble(3));
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
