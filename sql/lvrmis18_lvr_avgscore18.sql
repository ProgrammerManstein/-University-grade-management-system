create definer = root@localhost view lvr_avgscore18 as
select `lvrmis18`.`lvr_course18`.`lvr_Cno18`         AS `lvr_Cno18`,
       `lvrmis18`.`lvr_course18`.`lvr_Cname18`       AS `lvr_Cname18`,
       avg(`lvrmis18`.`lvr_report18`.`lvr_Rscore18`) AS `avg(lvr_Rscore18)`
from `lvrmis18`.`lvr_report18`
         join `lvrmis18`.`lvr_course18`
where (`lvrmis18`.`lvr_course18`.`lvr_Cno18` = `lvrmis18`.`lvr_report18`.`lvr_Cno18`)
group by `lvrmis18`.`lvr_course18`.`lvr_Cno18`;

INSERT INTO lvrmis18.lvr_avgscore18 (课程编号, 课程名称, 平均成绩) VALUES ('01', '数据库设计', 79.5000);
INSERT INTO lvrmis18.lvr_avgscore18 (课程编号, 课程名称, 平均成绩) VALUES ('02', '计算机组成原理', 77.2500);
INSERT INTO lvrmis18.lvr_avgscore18 (课程编号, 课程名称, 平均成绩) VALUES ('03', '毛泽东思想', 73.7500);
INSERT INTO lvrmis18.lvr_avgscore18 (课程编号, 课程名称, 平均成绩) VALUES ('04', 'JAVA', 55.0000);
INSERT INTO lvrmis18.lvr_avgscore18 (课程编号, 课程名称, 平均成绩) VALUES ('07', '电路原理', 70.0000);
INSERT INTO lvrmis18.lvr_avgscore18 (课程编号, 课程名称, 平均成绩) VALUES ('08', '汇编', 55.0000);