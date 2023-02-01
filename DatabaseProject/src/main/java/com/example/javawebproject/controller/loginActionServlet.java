package com.example.javawebproject.controller;

import com.example.javawebproject.dao.UserDao;
import com.example.javawebproject.dao.UserDaoImpl;
import com.example.javawebproject.model.User;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "loginActionServlet", value = "/loginActionServlet")
public class loginActionServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

//        response.setContentType("text/html;charset=utf-8");
        HttpSession session=request.getSession();
        UserDao dao = new UserDaoImpl();
        response.setCharacterEncoding("utf-8");
        response.setHeader("content-type", "text/html;charset=utf-8");
        ArrayList<User> adminlist=new ArrayList<User>();
        String message = "";
        String passwords=null;
        try{
            String num1=(String)request.getParameter("num1");
            String num2=(String)request.getParameter("num2");
            String num3=(String)request.getParameter("num3");
            if(num1!=null){
                adminlist = dao.findByNum(request.getParameter("num1"));
                //用户名正确
                if(adminlist!=null&&adminlist.size()!=0){
                    passwords=adminlist.get(0).getUpasswords();
                    if(!passwords.equals(request.getParameter("password"))||adminlist.get(0).getUchar()!=2&&adminlist.get(0).getUchar()!=3){
                        response.sendRedirect(request.getContextPath()+"/adminLogin.jsp?error=error");
                    }
                    else{
                        String Uno=adminlist.get(0).getUno();
                        String Uname=adminlist.get(0).getUname();
                        session.setAttribute("Uno",Uno);
                        session.setAttribute("Uname",Uname);
                        session.setAttribute("passwords",passwords);
                        RequestDispatcher rd=request.getRequestDispatcher("/admin1.jsp");
                        rd.forward(request,response);
                    }
                }
                //用户名错误
                else{
                    response.sendRedirect(request.getContextPath()+"/adminLogin.jsp?error=error");
                }
            }
            if(adminlist!=null&&num2!=null){
                adminlist = dao.findByNum(request.getParameter("num2"));
                //用户名正确
                if(adminlist.size()!=0){
                    passwords=adminlist.get(0).getUpasswords();
                    System.out.println("numDB:"+adminlist.get(0).getUno());
                    System.out.println("passwordDB:"+adminlist.get(0).getUpasswords());
                    System.out.println("powerDB:"+adminlist.get(0).getUchar());
                    if(!passwords.equals(request.getParameter("password"))||adminlist.get(0).getUchar()!=1&&adminlist.get(0).getUchar()!=3){
                        response.sendRedirect(request.getContextPath()+"/teacherLogin.jsp?error=error");
                    }
                    else{
                        String Uno=adminlist.get(0).getUno();
                        String Uname=adminlist.get(0).getUname();
                        session.setAttribute("Uno",Uno);
                        session.setAttribute("Uname",Uname);
                        session.setAttribute("passwords",passwords);
                        RequestDispatcher rd=request.getRequestDispatcher("/admin2.jsp");
                        rd.forward(request,response);
                    }
                }
                //用户名错误
                else{
                    response.sendRedirect(request.getContextPath()+"/teacherLogin.jsp?error=error");
                }
            }
            if(adminlist!=null&&num3!=null){

                adminlist = dao.findByNum(request.getParameter("num3"));
                //用户名正确
                if(adminlist.size()!=0){
                    passwords=adminlist.get(0).getUpasswords();

                    if(!passwords.equals(request.getParameter("password"))||adminlist.get(0).getUchar()!=0&&adminlist.get(0).getUchar()!=2){
                        response.sendRedirect(request.getContextPath()+"/studentLogin.jsp?error=error");
                    }
                    else{
                        String Uno=adminlist.get(0).getUno();
                        String Uname=adminlist.get(0).getUname();
                        session.setAttribute("Uno",Uno);
                        session.setAttribute("Uname",Uname);
                        session.setAttribute("passwords",passwords);
                        RequestDispatcher rd=request.getRequestDispatcher("/admin3.jsp");
                        rd.forward(request,response);
                    }
                }
                //用户名错误
                else{
                    response.sendRedirect(request.getContextPath()+"/studentLogin.jsp?error=error");
                }
            }


        }catch(Exception e){
            System.out.println(e);
            message = "<li>查找记录错误！</li>" + e;
        }


    }
}
