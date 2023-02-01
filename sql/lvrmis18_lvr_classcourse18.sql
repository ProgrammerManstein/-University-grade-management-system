create definer = root@localhost view lvr_classcourse18 as
select `lvrmis18`.`lvr_lesson18`.`lvr_Ano18`         AS `lvr_Ano18`,
       `lvrmis18`.`lvr_adminclass18`.`lvr_Aname18`   AS `lvr_Aname18`,
       `lvrmis18`.`lvr_course18`.`lvr_Cno18`         AS `lvr_Cno18`,
       `lvrmis18`.`lvr_course18`.`lvr_Cname18`       AS `lvr_Cname18`,
       `lvrmis18`.`lvr_course18`.`lvr_Ccredits18`    AS `lvr_Ccredits18`,
       `lvrmis18`.`lvr_course18`.`lvr_Cclasshour18`  AS `lvr_Cclasshour18`,
       `lvrmis18`.`lvr_course18`.`lvr_Cterm18`       AS `lvr_Cterm18`,
       `lvrmis18`.`lvr_course18`.`lvr_Cexamineway18` AS `lvr_Cexamineway18`
from `lvrmis18`.`lvr_adminclass18`
         join `lvrmis18`.`lvr_course18`
         join `lvrmis18`.`lvr_lesson18`
where ((`lvrmis18`.`lvr_lesson18`.`lvr_Ano18` = `lvrmis18`.`lvr_adminclass18`.`lvr_Ano18`) and
       (`lvrmis18`.`lvr_course18`.`lvr_Cno18` = `lvrmis18`.`lvr_lesson18`.`lvr_Cno18`));

INSERT INTO lvrmis18.lvr_classcourse18 (班级编号, 班级名称, 课程编号, 课程名称, 学分, 学时, 开设学期, 考试方式) VALUES ('01', '机实01', '08', '汇编', 3, 3, 4, 0);
INSERT INTO lvrmis18.lvr_classcourse18 (班级编号, 班级名称, 课程编号, 课程名称, 学分, 学时, 开设学期, 考试方式) VALUES ('01', '机实01', '07', '电路原理', 4, 4, 3, 1);
INSERT INTO lvrmis18.lvr_classcourse18 (班级编号, 班级名称, 课程编号, 课程名称, 学分, 学时, 开设学期, 考试方式) VALUES ('01', '机实01', '06', '数据结构', 4, 4, 3, 1);
INSERT INTO lvrmis18.lvr_classcourse18 (班级编号, 班级名称, 课程编号, 课程名称, 学分, 学时, 开设学期, 考试方式) VALUES ('01', '机实01', '04', 'JAVA', 4, 4, 3, 1);
INSERT INTO lvrmis18.lvr_classcourse18 (班级编号, 班级名称, 课程编号, 课程名称, 学分, 学时, 开设学期, 考试方式) VALUES ('01', '机实01', '03', '毛泽东思想', 4, 4, 4, 1);
INSERT INTO lvrmis18.lvr_classcourse18 (班级编号, 班级名称, 课程编号, 课程名称, 学分, 学时, 开设学期, 考试方式) VALUES ('01', '机实01', '02', '计算机组成原理', 3, 3, 4, 1);
INSERT INTO lvrmis18.lvr_classcourse18 (班级编号, 班级名称, 课程编号, 课程名称, 学分, 学时, 开设学期, 考试方式) VALUES ('01', '机实01', '01', '数据库设计', 3, 3, 4, 1);
INSERT INTO lvrmis18.lvr_classcourse18 (班级编号, 班级名称, 课程编号, 课程名称, 学分, 学时, 开设学期, 考试方式) VALUES ('02', '软工02', '05', '马克思原理', 3, 3, 3, 1);
INSERT INTO lvrmis18.lvr_classcourse18 (班级编号, 班级名称, 课程编号, 课程名称, 学分, 学时, 开设学期, 考试方式) VALUES ('02', '软工02', '04', 'JAVA', 4, 4, 3, 1);
INSERT INTO lvrmis18.lvr_classcourse18 (班级编号, 班级名称, 课程编号, 课程名称, 学分, 学时, 开设学期, 考试方式) VALUES ('02', '软工02', '03', '毛泽东思想', 4, 4, 4, 1);
INSERT INTO lvrmis18.lvr_classcourse18 (班级编号, 班级名称, 课程编号, 课程名称, 学分, 学时, 开设学期, 考试方式) VALUES ('02', '软工02', '02', '计算机组成原理', 3, 3, 4, 1);
INSERT INTO lvrmis18.lvr_classcourse18 (班级编号, 班级名称, 课程编号, 课程名称, 学分, 学时, 开设学期, 考试方式) VALUES ('02', '软工02', '01', '数据库设计', 3, 3, 4, 1);
INSERT INTO lvrmis18.lvr_classcourse18 (班级编号, 班级名称, 课程编号, 课程名称, 学分, 学时, 开设学期, 考试方式) VALUES ('03', '自动化03', '08', '汇编', 3, 3, 4, 0);
INSERT INTO lvrmis18.lvr_classcourse18 (班级编号, 班级名称, 课程编号, 课程名称, 学分, 学时, 开设学期, 考试方式) VALUES ('03', '自动化03', '07', '电路原理', 4, 4, 3, 1);
INSERT INTO lvrmis18.lvr_classcourse18 (班级编号, 班级名称, 课程编号, 课程名称, 学分, 学时, 开设学期, 考试方式) VALUES ('03', '自动化03', '06', '数据结构', 4, 4, 3, 1);