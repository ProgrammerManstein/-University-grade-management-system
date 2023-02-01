create table lvr_student18
(
    lvr_Sno18      varchar(20) not null
        primary key,
    lvr_Splace18   varchar(20) null,
    lvr_Scredits18 int         null,
    lvr_Ano18      varchar(20) null,
    constraint lvr_student18_lvr_adminclass_lvr_Ano18_fk
        foreign key (lvr_Ano18) references lvr_adminclass18 (lvr_Ano18)
            on update cascade on delete cascade,
    constraint lvr_student18_lvr_user18_lvr_Uno18_fk
        foreign key (lvr_Sno18) references lvr_user18 (lvr_Uno18)
            on update cascade on delete cascade
);

INSERT INTO lvrmis18.lvr_student18 (lvr_Sno18, lvr_Splace18, lvr_Scredits18, lvr_Ano18) VALUES ('1609', '浙江', 10, '02');
INSERT INTO lvrmis18.lvr_student18 (lvr_Sno18, lvr_Splace18, lvr_Scredits18, lvr_Ano18) VALUES ('1611', '贵州', null, '02');
INSERT INTO lvrmis18.lvr_student18 (lvr_Sno18, lvr_Splace18, lvr_Scredits18, lvr_Ano18) VALUES ('1613', '湖南', 6, '02');
INSERT INTO lvrmis18.lvr_student18 (lvr_Sno18, lvr_Splace18, lvr_Scredits18, lvr_Ano18) VALUES ('1614', '浙江', 4, '03');
INSERT INTO lvrmis18.lvr_student18 (lvr_Sno18, lvr_Splace18, lvr_Scredits18, lvr_Ano18) VALUES ('1615', '浙江', 10, '01');
INSERT INTO lvrmis18.lvr_student18 (lvr_Sno18, lvr_Splace18, lvr_Scredits18, lvr_Ano18) VALUES ('999', '湖南', null, '02');