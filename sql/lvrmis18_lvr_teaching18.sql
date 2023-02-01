create table lvr_teaching18
(
    lvr_Cno18 varchar(20) not null,
    lvr_Tno18 varchar(20) not null,
    primary key (lvr_Cno18, lvr_Tno18),
    constraint lvr_teaching18_lvr_course18_lvr_Cno18_fk
        foreign key (lvr_Cno18) references lvr_course18 (lvr_Cno18)
            on update cascade on delete cascade,
    constraint lvr_teaching18_lvr_teacher18_lvr_Tno18_fk
        foreign key (lvr_Tno18) references lvr_teacher18 (lvr_Tno18)
);

create index lvr_teaching_lvr_Cno18_lvr_Tno18_index
    on lvr_teaching18 (lvr_Cno18, lvr_Tno18);

INSERT INTO lvrmis18.lvr_teaching18 (lvr_Cno18, lvr_Tno18) VALUES ('01', '02');
INSERT INTO lvrmis18.lvr_teaching18 (lvr_Cno18, lvr_Tno18) VALUES ('02', '02');
INSERT INTO lvrmis18.lvr_teaching18 (lvr_Cno18, lvr_Tno18) VALUES ('03', '02');
INSERT INTO lvrmis18.lvr_teaching18 (lvr_Cno18, lvr_Tno18) VALUES ('03', '1612');
INSERT INTO lvrmis18.lvr_teaching18 (lvr_Cno18, lvr_Tno18) VALUES ('04', '1612');
INSERT INTO lvrmis18.lvr_teaching18 (lvr_Cno18, lvr_Tno18) VALUES ('05', '1612');
INSERT INTO lvrmis18.lvr_teaching18 (lvr_Cno18, lvr_Tno18) VALUES ('06', '1612');
INSERT INTO lvrmis18.lvr_teaching18 (lvr_Cno18, lvr_Tno18) VALUES ('02', '1620');
INSERT INTO lvrmis18.lvr_teaching18 (lvr_Cno18, lvr_Tno18) VALUES ('07', '1620');
INSERT INTO lvrmis18.lvr_teaching18 (lvr_Cno18, lvr_Tno18) VALUES ('08', '1620');