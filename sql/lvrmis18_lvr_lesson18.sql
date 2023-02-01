create table lvr_lesson18
(
    lvr_Ano18 varchar(20) not null,
    lvr_Cno18 varchar(20) not null,
    primary key (lvr_Ano18, lvr_Cno18),
    constraint Lvr_Lesson18_lvr_adminclass18_lvr_Ano18_fk
        foreign key (lvr_Ano18) references lvr_adminclass18 (lvr_Ano18)
            on update cascade on delete cascade,
    constraint Lvr_Lesson18_lvr_course18_lvr_Cno18_fk
        foreign key (lvr_Cno18) references lvr_course18 (lvr_Cno18)
            on update cascade on delete cascade
);

create index Lvr_Lesson18_lvr_Ano_lvr_Cno_index
    on lvr_lesson18 (lvr_Ano18, lvr_Cno18);

INSERT INTO lvrmis18.lvr_lesson18 (lvr_Ano18, lvr_Cno18) VALUES ('01', '01');
INSERT INTO lvrmis18.lvr_lesson18 (lvr_Ano18, lvr_Cno18) VALUES ('02', '01');
INSERT INTO lvrmis18.lvr_lesson18 (lvr_Ano18, lvr_Cno18) VALUES ('01', '02');
INSERT INTO lvrmis18.lvr_lesson18 (lvr_Ano18, lvr_Cno18) VALUES ('02', '02');
INSERT INTO lvrmis18.lvr_lesson18 (lvr_Ano18, lvr_Cno18) VALUES ('01', '03');
INSERT INTO lvrmis18.lvr_lesson18 (lvr_Ano18, lvr_Cno18) VALUES ('02', '03');
INSERT INTO lvrmis18.lvr_lesson18 (lvr_Ano18, lvr_Cno18) VALUES ('01', '04');
INSERT INTO lvrmis18.lvr_lesson18 (lvr_Ano18, lvr_Cno18) VALUES ('02', '04');
INSERT INTO lvrmis18.lvr_lesson18 (lvr_Ano18, lvr_Cno18) VALUES ('02', '05');
INSERT INTO lvrmis18.lvr_lesson18 (lvr_Ano18, lvr_Cno18) VALUES ('01', '06');
INSERT INTO lvrmis18.lvr_lesson18 (lvr_Ano18, lvr_Cno18) VALUES ('03', '06');
INSERT INTO lvrmis18.lvr_lesson18 (lvr_Ano18, lvr_Cno18) VALUES ('01', '07');
INSERT INTO lvrmis18.lvr_lesson18 (lvr_Ano18, lvr_Cno18) VALUES ('03', '07');
INSERT INTO lvrmis18.lvr_lesson18 (lvr_Ano18, lvr_Cno18) VALUES ('01', '08');
INSERT INTO lvrmis18.lvr_lesson18 (lvr_Ano18, lvr_Cno18) VALUES ('03', '08');