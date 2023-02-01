create table lvr_teacher18
(
    lvr_Tno18    varchar(20) not null
        primary key,
    lvr_Ttitle18 varchar(20) null,
    lvr_Tphone18 varchar(20) null,
    constraint lvr_teacher18_lvr_user18_lvr_Uno18_fk
        foreign key (lvr_Tno18) references lvr_user18 (lvr_Uno18)
            on update cascade on delete cascade
);

INSERT INTO lvrmis18.lvr_teacher18 (lvr_Tno18, lvr_Ttitle18, lvr_Tphone18) VALUES ('01', null, null);
INSERT INTO lvrmis18.lvr_teacher18 (lvr_Tno18, lvr_Ttitle18, lvr_Tphone18) VALUES ('02', '教授', '88888888');
INSERT INTO lvrmis18.lvr_teacher18 (lvr_Tno18, lvr_Ttitle18, lvr_Tphone18) VALUES ('1612', '教授', '66666666');
INSERT INTO lvrmis18.lvr_teacher18 (lvr_Tno18, lvr_Ttitle18, lvr_Tphone18) VALUES ('1620', '讲师', '10086');