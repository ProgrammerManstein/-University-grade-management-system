create table lvr_adminclass18
(
    lvr_Ano18   varchar(20) not null
        primary key,
    lvr_Aname18 varchar(20) not null,
    lvr_Mno18   varchar(20) null,
    constraint lvr_adminclass18_lvr_major18_Lvr_Mno18_fk
        foreign key (lvr_Mno18) references lvr_major18 (Lvr_Mno18)
);

INSERT INTO lvrmis18.lvr_adminclass18 (lvr_Ano18, lvr_Aname18, lvr_Mno18) VALUES ('01', '机实01', '01');
INSERT INTO lvrmis18.lvr_adminclass18 (lvr_Ano18, lvr_Aname18, lvr_Mno18) VALUES ('02', '软工02', '01');
INSERT INTO lvrmis18.lvr_adminclass18 (lvr_Ano18, lvr_Aname18, lvr_Mno18) VALUES ('03', '自动化03', '02');