create definer = root@localhost view lvr_avggpa18 as
select `lvrmis18`.`lvr_stuscore18`.`学号`        AS `学号`,
       `lvrmis18`.`lvr_stuscore18`.`姓名`        AS `姓名`,
       `lvrmis18`.`lvr_stuscore18`.`开设学期`      AS `开设学期`,
       (sum((`lvrmis18`.`lvr_stuscore18`.`成绩` * `lvrmis18`.`lvr_stuscore18`.`学分`)) /
        sum(`lvrmis18`.`lvr_stuscore18`.`学分`)) AS `sum(成绩*lvr_stuscore18.学分)/sum(学分)`
from `lvrmis18`.`lvr_stuscore18`
group by `lvrmis18`.`lvr_stuscore18`.`学号`, `lvrmis18`.`lvr_stuscore18`.`开设学期`;

INSERT INTO lvrmis18.lvr_avggpa18 (学号, 姓名, 学期, 平均成绩) VALUES ('1609', '吕锐', 4, 84.4000);
INSERT INTO lvrmis18.lvr_avggpa18 (学号, 姓名, 学期, 平均成绩) VALUES ('1611', '倪依涛', 4, 65.1000);
INSERT INTO lvrmis18.lvr_avggpa18 (学号, 姓名, 学期, 平均成绩) VALUES ('1613', '苏嘉宇', 4, 73.1000);
INSERT INTO lvrmis18.lvr_avggpa18 (学号, 姓名, 学期, 平均成绩) VALUES ('1615', '王涛', 4, 83.5000);
INSERT INTO lvrmis18.lvr_avggpa18 (学号, 姓名, 学期, 平均成绩) VALUES ('1615', '王涛', 3, 55.0000);
INSERT INTO lvrmis18.lvr_avggpa18 (学号, 姓名, 学期, 平均成绩) VALUES ('1614', '王璋辰', 3, 70.0000);
INSERT INTO lvrmis18.lvr_avggpa18 (学号, 姓名, 学期, 平均成绩) VALUES ('1614', '王璋辰', 4, 55.0000);