create definer = root@localhost view lvr_sumcredits18 as
select `lvrmis18`.`lvr_stuscore18`.`学号`      AS `学号`,
       `lvrmis18`.`lvr_stuscore18`.`姓名`      AS `姓名`,
       sum(`lvrmis18`.`lvr_stuscore18`.`学分`) AS `sum(学分)`
from `lvrmis18`.`lvr_stuscore18`
where (`lvrmis18`.`lvr_stuscore18`.`成绩` >= 60)
group by `lvrmis18`.`lvr_stuscore18`.`学号`;

INSERT INTO lvrmis18.lvr_sumcredits18 (学号, 姓名, 已修总学分) VALUES ('1609', '吕锐', 10);
INSERT INTO lvrmis18.lvr_sumcredits18 (学号, 姓名, 已修总学分) VALUES ('1613', '苏嘉宇', 6);
INSERT INTO lvrmis18.lvr_sumcredits18 (学号, 姓名, 已修总学分) VALUES ('1615', '王涛', 10);
INSERT INTO lvrmis18.lvr_sumcredits18 (学号, 姓名, 已修总学分) VALUES ('1611', '倪依涛', 4);
INSERT INTO lvrmis18.lvr_sumcredits18 (学号, 姓名, 已修总学分) VALUES ('1614', '王璋辰', 4);