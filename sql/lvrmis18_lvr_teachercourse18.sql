create definer = root@localhost view lvr_teachercourse18 as
select `lvrmis18`.`lvr_user18`.`lvr_Uno18`           AS `lvr_Uno18`,
       `lvrmis18`.`lvr_user18`.`lvr_Uname18`         AS `lvr_Uname18`,
       `lvrmis18`.`lvr_course18`.`lvr_Cno18`         AS `lvr_Cno18`,
       `lvrmis18`.`lvr_course18`.`lvr_Cname18`       AS `lvr_Cname18`,
       `lvrmis18`.`lvr_course18`.`lvr_Ccredits18`    AS `lvr_Ccredits18`,
       `lvrmis18`.`lvr_course18`.`lvr_Cclasshour18`  AS `lvr_Cclasshour18`,
       `lvrmis18`.`lvr_course18`.`lvr_Cterm18`       AS `lvr_Cterm18`,
       `lvrmis18`.`lvr_course18`.`lvr_Cexamineway18` AS `lvr_Cexamineway18`
from `lvrmis18`.`lvr_teacher18`
         join `lvrmis18`.`lvr_course18`
         join `lvrmis18`.`lvr_user18`
         join `lvrmis18`.`lvr_teaching18`
where ((`lvrmis18`.`lvr_user18`.`lvr_Uno18` = `lvrmis18`.`lvr_teacher18`.`lvr_Tno18`) and
       (`lvrmis18`.`lvr_course18`.`lvr_Cno18` = `lvrmis18`.`lvr_teaching18`.`lvr_Cno18`) and
       (`lvrmis18`.`lvr_teacher18`.`lvr_Tno18` = `lvrmis18`.`lvr_teaching18`.`lvr_Tno18`));

INSERT INTO lvrmis18.lvr_teachercourse18 (教师编号, 姓名, 课程编号, 课程名称, 学分, 学时, 开设学期, 考试方式) VALUES ('02', '郑昊', '01', '数据库设计', 3, 3, 4, 1);
INSERT INTO lvrmis18.lvr_teachercourse18 (教师编号, 姓名, 课程编号, 课程名称, 学分, 学时, 开设学期, 考试方式) VALUES ('02', '郑昊', '02', '计算机组成原理', 3, 3, 4, 1);
INSERT INTO lvrmis18.lvr_teachercourse18 (教师编号, 姓名, 课程编号, 课程名称, 学分, 学时, 开设学期, 考试方式) VALUES ('02', '郑昊', '03', '毛泽东思想', 4, 4, 4, 1);
INSERT INTO lvrmis18.lvr_teachercourse18 (教师编号, 姓名, 课程编号, 课程名称, 学分, 学时, 开设学期, 考试方式) VALUES ('1612', '申屠克勤', '03', '毛泽东思想', 4, 4, 4, 1);
INSERT INTO lvrmis18.lvr_teachercourse18 (教师编号, 姓名, 课程编号, 课程名称, 学分, 学时, 开设学期, 考试方式) VALUES ('1612', '申屠克勤', '04', 'JAVA', 4, 4, 3, 1);
INSERT INTO lvrmis18.lvr_teachercourse18 (教师编号, 姓名, 课程编号, 课程名称, 学分, 学时, 开设学期, 考试方式) VALUES ('1612', '申屠克勤', '05', '马克思原理', 3, 3, 3, 1);
INSERT INTO lvrmis18.lvr_teachercourse18 (教师编号, 姓名, 课程编号, 课程名称, 学分, 学时, 开设学期, 考试方式) VALUES ('1612', '申屠克勤', '06', '数据结构', 4, 4, 3, 1);
INSERT INTO lvrmis18.lvr_teachercourse18 (教师编号, 姓名, 课程编号, 课程名称, 学分, 学时, 开设学期, 考试方式) VALUES ('1620', '胡泽涛', '02', '计算机组成原理', 3, 3, 4, 1);
INSERT INTO lvrmis18.lvr_teachercourse18 (教师编号, 姓名, 课程编号, 课程名称, 学分, 学时, 开设学期, 考试方式) VALUES ('1620', '胡泽涛', '07', '电路原理', 4, 4, 3, 1);
INSERT INTO lvrmis18.lvr_teachercourse18 (教师编号, 姓名, 课程编号, 课程名称, 学分, 学时, 开设学期, 考试方式) VALUES ('1620', '胡泽涛', '08', '汇编', 3, 3, 4, 0);