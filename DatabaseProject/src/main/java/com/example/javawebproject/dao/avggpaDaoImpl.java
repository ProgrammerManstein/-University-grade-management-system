package com.example.javawebproject.dao;

import com.example.javawebproject.model.User;
import com.example.javawebproject.model.avggpa;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class avggpaDaoImpl implements avggpaDao{

    // 按id查询客户记录
    public  ArrayList<avggpa> findByTerm (int num, int flag) throws DaoException{
        ArrayList<avggpa> lists = new ArrayList<avggpa>();

        String sql = "SELECT *" +
                " FROM lvr_avggpa18 WHERE 学期 = ?";
        if(flag==0)
        {
            sql+=" order by 平均成绩 desc";
        }
        else
        {
            sql+=" order by 平均成绩";
        }
        try
        {
            Connection conn = getConnection();
            PreparedStatement pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1,num);
            ResultSet rst = pstmt.executeQuery();
            while(rst.next()){
                avggpa list = new avggpa();
                list.setSno(rst.getString(1));
                list.setSname(rst.getString(2));
                list.setCterm(rst.getInt(3));
                list.setScore(rst.getInt(4));
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
