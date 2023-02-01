package com.example.javawebproject.dao;

import com.example.javawebproject.model.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class UserDaoImpl implements UserDao {

    // 按id查询客户记录
    public ArrayList<User> findByNum(String num) throws DaoException{
        ArrayList<User> users = new ArrayList<User>();

        String sql = "SELECT *" +
                " FROM lvr_user18 WHERE lvr_Uno18 = ?";
        try
        {
            Connection conn = getConnection();
            PreparedStatement pstmt = conn.prepareStatement(sql);
            pstmt.setString(1,num);
            ResultSet rst = pstmt.executeQuery();
            while(rst.next()){
                User user = new User();
                user.setUno(rst.getString("lvr_Uno18"));
                user.setUpasswords(rst.getString("lvr_Upasswords18"));
                user.setUchar(rst.getInt("lvr_uchar18"));
                users.add(user);
            }
            conn.close();
            return users;
        }catch(SQLException e){
            e.printStackTrace();
            return null;
        }
    }
    public int insertUser(String a,String b,int c,String d,String e,int f) throws DaoException{
        ArrayList<User> users = new ArrayList<User>();

        String sql = "insert into lvr_user18 values(?,?,?,?,?,?)";
        try
        {
            Connection conn = getConnection();
            PreparedStatement pstmt = conn.prepareStatement(sql);
            pstmt.setString(1,a);
            pstmt.setString(2,b);
            pstmt.setInt(3,c);
            pstmt.setString(4,d);
            pstmt.setString(5,e);
            pstmt.setInt(6,f);
            boolean rst = pstmt.execute();
            conn.close();
            return 0;
        }catch(SQLException w){
            w.printStackTrace();
            return 1;
        }
    }
    public  int updatePassword(String Uno,String pwd) throws DaoException{
        String sql = "update lvr_user18 set lvr_passwords18 = ? where lvr_uno18=?";
        try
        {
            Connection conn = getConnection();
            PreparedStatement pstmt = conn.prepareStatement(sql);
            pstmt.setString(1,pwd);
            pstmt.setString(2,Uno);
            int flag=pstmt.executeUpdate();
            conn.close();
            return flag;
        }catch(SQLException e){
            e.printStackTrace();
            return 0;
        }
    }
}
