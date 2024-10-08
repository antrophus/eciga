#######################################################
####################### eciga_db ######################
###################### users table ####################


use eciga_db;

drop table users;

create table users (
	uno  	 	 integer 		  primary key     auto_increment,
    uid 		 varchar(20)	  not null        unique,
    password	 varchar(20) 	  not null,
    name 		 varchar(20),
    hp			 varchar(20),
    address		 varchar(200),
    birth	  	 varchar(10),
    role		 int
);



-- 조회
select * from users;

select  uno,
		uid,
		password,
        name,
        hp,
        address,
        birth,
        role
from users
;


-- 등록
insert into users
values(null, '111', '111', '1111', '010-1111-1111', '서울시 서초구', '19900909', 0)
;

insert into users
values(null, '222', '222', '2222', '010-2222-2222', '서울시 서초구2', '19920202', 1)
;

insert into users
values(null, '333', '333', '3333', '010-3333-3333', '서울시 서초구3', '19930303', 0)
;

insert into users
values(null, '444', '444', '4444', '010-4444-4444', '서울시 서초구4', '19940404', 1)
;

insert into users
values(null, '555', '555', '5555', '010-5555-5555', '서울시 서초구5', '19950505', 0)
;




-- 수정
update users
set password = '666',
	name = '6666',
	hp = '010-6666-6666',
    birth = '19960606',
    address = '서울시 서초구6'
where uid = '555'
;


-- 삭제
delete from users
where uid = '555'
and password = '666'
;


-- 회원가입 조회
select  uno,
		name
from users
where uid = '222'
and password = '222'
;





