<%--<jsp:useBean id="teacherList" scope="request" type=""/>--%>
<%@ page import="javax.swing.*" %>
<%@ page import="java.util.*" %>
<%@ page import="jakarta.servlet.http.HttpSession" %>
<%@ page import="com.example.javawebproject.model.sumcredits" %>
<%@ page import="com.example.javawebproject.dao.sumcreditsDao" %>
<%@ page import="com.example.javawebproject.dao.sumcreditsDaoImpl" %>
<%@ page import="com.example.javawebproject.model.stuscore" %>
<%@ page import="com.example.javawebproject.dao.stuscoreDaoImpl" %>
<%@ page import="com.example.javawebproject.dao.stuscoreDao" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%--<%@include file="javax.util.*"%>--%>
<!DOCTYPE html>
<html lang="en">
<%
  String preURL=request.getRequestURL().toString();
  request.getSession().setAttribute("preURL",preURL);
  String no= (String) request.getSession().getAttribute("Uno");
  String name= (String) request.getSession().getAttribute("Uname");
%>
<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <link href="https://fonts.googleapis.com/css?family=Raleway:100,300,400,500,700,900" rel="stylesheet">

  <title>学生所学课程及学分统计</title>
  <!--
  SOFTY PINKO
  https://templatemo.com/tm-535-softy-pinko
  -->

  <!-- Additional CSS Files -->
  <link href="assets/css/bootstrap.min.css" rel="stylesheet" type="text/css">

  <link href="assets/css/font-awesome.css" rel="stylesheet" type="text/css">

  <link href="assets/css/templatemo-softy-pinko.css" rel="stylesheet" type="text/css">

</head>

<body>
<%
  HttpSession Session=request.getSession();
  Session.setAttribute("key","value");
%>
<!-- ***** Preloader Start ***** -->
<div id="preloader">
  <div class="jumper">
    <div></div>
    <div></div>
    <div></div>
  </div>
</div>
<!-- ***** Preloader End ***** -->


<!-- ***** Header Area Start ***** -->
<header class="header-area header-sticky">
  <div class="container">
    <div class="row">
      <div class="col-12">
        <nav class="main-nav">
          <!-- ***** Logo Start ***** -->
          <a href="#" class="logo row">
            <i class="fa fa-heartbeat mr-3 fa-3x text-black-50" aria-hidden="true"></i>
            <h2 class="text-black-50">学生所学课程及学分</h2>
          </a>
          <!-- ***** Logo End ***** -->
          <!-- ***** Menu Start ***** -->
          <ul class="nav">
            <li><a href="admin3.jsp" class="active">主页</a></li>
            <%--                        <li><a href="SelectStudentAndTeacher_only.jsp">师生信息查询</a></li>--%>
          </ul>
          <a class='menu-trigger'>
            <span>Menu</span>
          </a>
          <!-- ***** Menu End ***** -->
        </nav>
      </div>
    </div>
  </div>
</header>
<!-- ***** Header Area End ***** -->

<!-- ***** Welcome Area Start ***** -->
<div class="welcome-area bg-success" id="welcome" style="height: 60vh">

  <!-- ***** Header Text Start ***** -->
  <div class="header-text">
    <div class="container">
      <div class="row">
        <div class="offset-xl-3 col-xl-6 offset-lg-2 col-lg-8 col-md-12 col-sm-12">
          <h1>学生所学课程及学分</h1>
          <h5>查询学生所学课程及学分</h5>

        </div>
      </div>
    </div>
  </div>
  <!-- ***** Header Text End ***** -->
</div>
<!-- ***** Welcome Area End ***** -->

<div class="container">
  <div class="row">
    <div class="col-12">
    </div>
  </div>
</div>


<!-- ***** situation ***** -->
<section class="section padding-top-70 padding-bottom-0" id="features">
  <div class="container">

    <div class="row col-12">
      <%
        ArrayList<sumcredits> lists =new ArrayList<sumcredits>();
        sumcreditsDao dao=new sumcreditsDaoImpl();
        ArrayList<stuscore> lists1 =new ArrayList<stuscore>();
        stuscoreDao dao1=new stuscoreDaoImpl();

        lists=dao.findByNo(no);
        lists1=dao1.findByNo(no);
      %>
      <label class="col-3  control-label" title="学期" style="justify-content: left">已修总学分</label>
      <%=lists.get(0).getSum()%>
      <table  class="table table-condensed table-hover">
        <%--                        学生--%>
        <tr class="active">
          <td class="active">学号</td>
          <td class="active">姓名</td>
          <td class="active">课程编号</td>
          <td class="active">课程名称</td>
          <td class="active">学分</td>
          <td class="active">学时</td>
          <td class="active">开设学期</td>
        </tr>

        <%
          if(lists1 !=null&& lists1.size()>0){
            for(stuscore list: lists1){
        %>
        <tr class="active col-9">
          <td class="active "><%=list.getSno()%></td>
          <td class="active "><%=list.getSname()%></td>
          <td class="active "><%=list.getCno()%></td>
          <td class="active "><%=list.getCname()%></td>
          <td class="active "><%=list.getCcredits()%></td>
          <td class="active "><%=list.getCclasshour()%></td>
          <td class="active "><%=list.getCterm()%></td>
        </tr>

        <%
          }
        %>
        <%

          }
        %>
      </table>
    </div>
  </div>
  <div class="row">
    <div class="col-lg-12">
      <div class="hr"></div>
    </div>
  </div>
  </div>
</section>
<!-- ***** Features Big Item End ***** -->
<!-- ***** Footer Start ***** -->
<footer class="bg-dark">
  <div class="container">
    <div class="row">
      <div class="col-lg-12">
        <p class="copyright">Copyright &copy; 2021 Zhejiang University Of Technology - Design: lv rui,wang tao</p>
      </div>
    </div>
  </div>
</footer>

<!-- jQuery -->
<script src="assets/js/jquery-2.1.0.min.js"></script>

<!-- Bootstrap -->
<script src="assets/js/popper.js"></script>
<script src="assets/js/bootstrap.min.js"></script>

<!-- Plugins -->
<script src="assets/js/scrollreveal.min.js"></script>
<script src="assets/js/waypoints.min.js"></script>
<script src="assets/js/jquery.counterup.min.js"></script>
<script src="assets/js/imgfix.min.js"></script>

<!-- Global Init -->
<script src="assets/js/custom.js"></script>
</body>
</html>