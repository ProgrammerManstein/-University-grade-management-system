package com.example.javawebproject.dao;

import com.example.javawebproject.model.stuplace;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class stuplaceDaoImpl implements stuplaceDao{

    // 按id查询客户记录
    public  ArrayList<stuplace> findByPlace (String p) throws DaoException{
        ArrayList<stuplace> lists = new ArrayList<stuplace>();

        String sql = "SELECT *" +
                " FROM lvr_stuplace18 where 生源所在地 like ?";
        try
        {
            Connection conn = getConnection();
            PreparedStatement pstmt = conn.prepareStatement(sql);
            p="%"+p+"%";
            pstmt.setString(1,p);
            ResultSet rst = pstmt.executeQuery();
            while(rst.next()){
                stuplace list = new stuplace();
                list.setPlace(rst.getString(1));
                list.setPopulation(rst.getInt(2));
                lists.add(list);
            }
            conn.close();
            return lists;
        }catch(SQLException e){
            e.printStackTrace();
            return null;
        }
    }
    public  ArrayList<stuplace> findAll () throws DaoException{
        ArrayList<stuplace> lists = new ArrayList<stuplace>();

        String sql = "SELECT *" +
                " FROM lvr_stuplace18";
        try
        {
            Connection conn = getConnection();
            PreparedStatement pstmt = conn.prepareStatement(sql);
            ResultSet rst = pstmt.executeQuery();
            while(rst.next()){
                stuplace list = new stuplace();
                list.setPlace(rst.getString(1));
                list.setPopulation(rst.getInt(2));
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
