create table lvr_report18
(
    lvr_Cno18    varchar(20) not null,
    lvr_Sno18    varchar(20) not null,
    lvr_Rscore18 int         null,
    primary key (lvr_Cno18, lvr_Sno18),
    constraint lvr_report18_lvr_course18_lvr_Cno18_fk
        foreign key (lvr_Cno18) references lvr_course18 (lvr_Cno18)
            on update cascade on delete cascade,
    constraint lvr_report18_lvr_student18_lvr_Sno18_fk
        foreign key (lvr_Sno18) references lvr_student18 (lvr_Sno18)
            on update cascade on delete cascade
);

create index lvr_report18_lvr_Cno18_lvr_Sno18_index
    on lvr_report18 (lvr_Cno18, lvr_Sno18);

INSERT INTO lvrmis18.lvr_report18 (lvr_Cno18, lvr_Sno18, lvr_Rscore18) VALUES ('01', '1609', 90);
INSERT INTO lvrmis18.lvr_report18 (lvr_Cno18, lvr_Sno18, lvr_Rscore18) VALUES ('01', '1611', 58);
INSERT INTO lvrmis18.lvr_report18 (lvr_Cno18, lvr_Sno18, lvr_Rscore18) VALUES ('01', '1613', 85);
INSERT INTO lvrmis18.lvr_report18 (lvr_Cno18, lvr_Sno18, lvr_Rscore18) VALUES ('01', '1615', 85);
INSERT INTO lvrmis18.lvr_report18 (lvr_Cno18, lvr_Sno18, lvr_Rscore18) VALUES ('02', '1609', 90);
INSERT INTO lvrmis18.lvr_report18 (lvr_Cno18, lvr_Sno18, lvr_Rscore18) VALUES ('02', '1611', 59);
INSERT INTO lvrmis18.lvr_report18 (lvr_Cno18, lvr_Sno18, lvr_Rscore18) VALUES ('02', '1613', 80);
INSERT INTO lvrmis18.lvr_report18 (lvr_Cno18, lvr_Sno18, lvr_Rscore18) VALUES ('02', '1615', 80);
INSERT INTO lvrmis18.lvr_report18 (lvr_Cno18, lvr_Sno18, lvr_Rscore18) VALUES ('03', '1609', 76);
INSERT INTO lvrmis18.lvr_report18 (lvr_Cno18, lvr_Sno18, lvr_Rscore18) VALUES ('03', '1611', 75);
INSERT INTO lvrmis18.lvr_report18 (lvr_Cno18, lvr_Sno18, lvr_Rscore18) VALUES ('03', '1613', 59);
INSERT INTO lvrmis18.lvr_report18 (lvr_Cno18, lvr_Sno18, lvr_Rscore18) VALUES ('03', '1615', 85);
INSERT INTO lvrmis18.lvr_report18 (lvr_Cno18, lvr_Sno18, lvr_Rscore18) VALUES ('04', '1615', 55);
INSERT INTO lvrmis18.lvr_report18 (lvr_Cno18, lvr_Sno18, lvr_Rscore18) VALUES ('07', '1614', 70);
INSERT INTO lvrmis18.lvr_report18 (lvr_Cno18, lvr_Sno18, lvr_Rscore18) VALUES ('08', '1614', 55);