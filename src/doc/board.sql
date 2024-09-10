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








#######################################################
####################### eciga_db ######################
###################### board table ####################


use eciga_db;

drop table board;

create table board (
	bno  	 		 integer 		  primary key     auto_increment,
    uid 	 		 varchar(20),
    title	    	 varchar(100),
    content 		 varchar(3000),
    reg_date		 datetime,
    ans_status		 int,
    answer	  	 	 varchar(200),
    ans_date		 datetime,
    
	constraint board_fk foreign key (uid) 
    references Users(uid)
);



-- 조회
select * from board;

select  bno,
		uid,
		title,
        content,
        reg_date,
        ans_status,
        answer,
        ans_date
from board
;


-- 문의 등록 (유저)
insert into board ( bno, uid, title, content, reg_date, ans_status )
values( null, '111', 'title1', 'content1', now(), 0 )
;

insert into board ( bno, uid, title, content, reg_date, ans_status )
values( null, '222', 'title2', 'content2', now(), 0 )
;


-- 답변 등록 (관리자)
update board 
set ans_status = 1, 
    answer = 'answer1',
    ans_date = now()
 where bno = 1
;


-- 문의 조회 (답변 미완)
select  bno,
		uid,
		title,
        content,
        reg_date,
        ans_status,
        answer,
        ans_date
from board

where ans_status = 0
;



