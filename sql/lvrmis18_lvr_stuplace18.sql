create definer = root@localhost view lvr_stuplace18 as
select `lvrmis18`.`lvr_student18`.`lvr_Splace18`     AS `lvr_Splace18`,
       count(`lvrmis18`.`lvr_student18`.`lvr_Sno18`) AS `count(lvr_Sno18)`
from `lvrmis18`.`lvr_student18`
group by `lvrmis18`.`lvr_student18`.`lvr_Splace18`;

INSERT INTO lvrmis18.lvr_stuplace18 (生源所在地, 总人数) VALUES ('浙江', 3);
INSERT INTO lvrmis18.lvr_stuplace18 (生源所在地, 总人数) VALUES ('贵州', 1);
INSERT INTO lvrmis18.lvr_stuplace18 (生源所在地, 总人数) VALUES ('湖南', 2);