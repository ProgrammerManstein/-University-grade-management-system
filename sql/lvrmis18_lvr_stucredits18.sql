create definer = root@localhost view lvr_stucredits18 as
select `lvrmis18`.`lvr_user18`.`lvr_Uno18`           AS `lvr_Uno18`,
       `lvrmis18`.`lvr_user18`.`lvr_Uname18`         AS `lvr_Uname18`,
       `lvrmis18`.`lvr_course18`.`lvr_Cno18`         AS `lvr_Cno18`,
       `lvrmis18`.`lvr_course18`.`lvr_Cname18`       AS `lvr_Cname18`,
       `lvrmis18`.`lvr_course18`.`lvr_Ccredits18`    AS `lvr_Ccredits18`,
       `lvrmis18`.`lvr_course18`.`lvr_Cclasshour18`  AS `lvr_Cclasshour18`,
       `lvrmis18`.`lvr_course18`.`lvr_Cterm18`       AS `lvr_Cterm18`,
       `lvrmis18`.`lvr_course18`.`lvr_Cexamineway18` AS `lvr_Cexamineway18`
from `lvrmis18`.`lvr_report18`
         join `lvrmis18`.`lvr_course18`
         join `lvrmis18`.`lvr_user18`
where ((`lvrmis18`.`lvr_user18`.`lvr_Uno18` = `lvrmis18`.`lvr_report18`.`lvr_Sno18`) and
       (`lvrmis18`.`lvr_course18`.`lvr_Cno18` = `lvrmis18`.`lvr_report18`.`lvr_Cno18`));

INSERT INTO lvrmis18.lvr_stucredits18 (学号, 姓名, 课程编号, 课程名称, 学分, 学时, 开设学期, 考试方式) VALUES ('1609', '吕锐', '01', '数据库设计', 3, 3, 4, 1);
INSERT INTO lvrmis18.lvr_stucredits18 (学号, 姓名, 课程编号, 课程名称, 学分, 学时, 开设学期, 考试方式) VALUES ('1611', '倪依涛', '01', '数据库设计', 3, 3, 4, 1);
INSERT INTO lvrmis18.lvr_stucredits18 (学号, 姓名, 课程编号, 课程名称, 学分, 学时, 开设学期, 考试方式) VALUES ('1613', '苏嘉宇', '01', '数据库设计', 3, 3, 4, 1);
INSERT INTO lvrmis18.lvr_stucredits18 (学号, 姓名, 课程编号, 课程名称, 学分, 学时, 开设学期, 考试方式) VALUES ('1615', '王涛', '01', '数据库设计', 3, 3, 4, 1);
INSERT INTO lvrmis18.lvr_stucredits18 (学号, 姓名, 课程编号, 课程名称, 学分, 学时, 开设学期, 考试方式) VALUES ('1609', '吕锐', '02', '计算机组成原理', 3, 3, 4, 1);
INSERT INTO lvrmis18.lvr_stucredits18 (学号, 姓名, 课程编号, 课程名称, 学分, 学时, 开设学期, 考试方式) VALUES ('1611', '倪依涛', '02', '计算机组成原理', 3, 3, 4, 1);
INSERT INTO lvrmis18.lvr_stucredits18 (学号, 姓名, 课程编号, 课程名称, 学分, 学时, 开设学期, 考试方式) VALUES ('1613', '苏嘉宇', '02', '计算机组成原理', 3, 3, 4, 1);
INSERT INTO lvrmis18.lvr_stucredits18 (学号, 姓名, 课程编号, 课程名称, 学分, 学时, 开设学期, 考试方式) VALUES ('1615', '王涛', '02', '计算机组成原理', 3, 3, 4, 1);
INSERT INTO lvrmis18.lvr_stucredits18 (学号, 姓名, 课程编号, 课程名称, 学分, 学时, 开设学期, 考试方式) VALUES ('1609', '吕锐', '03', '毛泽东思想', 4, 4, 4, 1);
INSERT INTO lvrmis18.lvr_stucredits18 (学号, 姓名, 课程编号, 课程名称, 学分, 学时, 开设学期, 考试方式) VALUES ('1611', '倪依涛', '03', '毛泽东思想', 4, 4, 4, 1);
INSERT INTO lvrmis18.lvr_stucredits18 (学号, 姓名, 课程编号, 课程名称, 学分, 学时, 开设学期, 考试方式) VALUES ('1613', '苏嘉宇', '03', '毛泽东思想', 4, 4, 4, 1);
INSERT INTO lvrmis18.lvr_stucredits18 (学号, 姓名, 课程编号, 课程名称, 学分, 学时, 开设学期, 考试方式) VALUES ('1615', '王涛', '03', '毛泽东思想', 4, 4, 4, 1);
INSERT INTO lvrmis18.lvr_stucredits18 (学号, 姓名, 课程编号, 课程名称, 学分, 学时, 开设学期, 考试方式) VALUES ('1615', '王涛', '04', 'JAVA', 4, 4, 3, 1);
INSERT INTO lvrmis18.lvr_stucredits18 (学号, 姓名, 课程编号, 课程名称, 学分, 学时, 开设学期, 考试方式) VALUES ('1614', '王璋辰', '07', '电路原理', 4, 4, 3, 1);
INSERT INTO lvrmis18.lvr_stucredits18 (学号, 姓名, 课程编号, 课程名称, 学分, 学时, 开设学期, 考试方式) VALUES ('1614', '王璋辰', '08', '汇编', 3, 3, 4, 0);