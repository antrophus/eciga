#######################################################
####################### eciga_db ######################
###################### goods table ####################


use eciga_db;

drop table goods;

create table goods (
	gno  	 	 integer 		  primary key     auto_increment,
    name 		 varchar(50),
    price	 	 int,
    savename	 varchar(100)
);



-- 조회
select * from goods;

select  gno,
		name,
		price,
		savename
from goods
;


-- 등록
insert into goods
values(null, 'goods1', 99000)
;

insert into goods
values(null, 'goods2', 88000)
;

insert into goods
values(null, 'goods3', 77000)
;






-- 수정
update goods
set name = 'goods5',
	price = 55000
where gno = '1'
;


-- 삭제
delete from goods
where gno = '1'
;



#######################################################
####################### eciga_db ######################
###################### color table ####################


use eciga_db;

drop table color;

create table color (
	cno  	 	 integer 		  primary key     auto_increment,
    color 		 varchar(20)
);

select * from color;

insert into color values
( null, 'black' ),
( null, 'white' ),
( null, 'red' ),
( null, 'green' ),
( null, 'blue' ),
( null, 'purple' ),
( null, 'pink' ),
( null, 'orange' );







#######################################################
####################### eciga_db #######################
#################### listGoods table ###################


use eciga_db;

drop table listGoods;

create table listGoods (
	fno  	 	 integer 		  primary key     auto_increment,
    gno 		 int,
    color	 	 int,
    
	constraint fk_listGoods_goods foreign key (gno) 
    references goods(gno),
	constraint fk_listGoods_color foreign key (color) 
    references color(cno)
);



-- 조회
select * from listGoods;

select  fno,
		gno,
		color
from listGoods
;



insert listgoods values ( null, 1, 1 );
insert listgoods values ( null, 2, 2 );
insert listgoods values ( null, 2, 3 );
insert listgoods values ( null, 3, 4 );


SELECT  *
FROM listgoods l
JOIN goods g ON l.gno = g.gno
JOIN color c ON l.color = c.cno
;

SELECT  l.fno gNo,
		g.name,
        g.price,
        c.color
FROM listgoods l
JOIN goods g ON l.gno = g.gno
JOIN color c ON l.color = c.cno
;






#######################################################
####################### eciga_db ######################
##################### cart table ######################


use eciga_db;

drop table cart;

create table cart (
	cno  	 	 integer 		  primary key     auto_increment,
    uno 		 int,
    fno	 		 int,
    count		 int,
    
	constraint fk_cart_users foreign key (uno) 
    references users(uno),
	constraint fk_cart_listGoods foreign key (fno) 
    references listGoods(fno)
);



-- 조회
select * from cart;

select  cno,
		uno,
		fno,
		count
from cart
;


delete from cart
where cno = 1;








#######################################################
####################### eciga_db ######################
##################### order table #####################


use eciga_db;

drop table orders;

create table orders (
	pno  	 	   integer 		  primary key     auto_increment,
    uno 		   int,
    delivery	   varchar(20),
    punch_date	   datetime,
    totalprice	   int,
    payment		   int,
    name	       varchar(20),
    
	constraint fk_orders_users foreign key (uno) 
    references users(uno)
);



-- 조회
select * from orders;

select  pno,
		uno,
		delivery,
		punch_date,
        totalprice,
        payment,
        name
from orders
;




-- 등록
insert into orders
values( null, 1, '배송준비중', now(), 99000, 0, '1번' )
;




-- 수정
update orders
set delivery = '배송중'
where pno = 1
;









#######################################################
####################### eciga_db ######################
################# selectGoods table ###################


use eciga_db;

drop table selectedGoods;

create table selectedGoods (
	sno  	 	 integer 		  primary key     auto_increment,
    pno 		 int,
    fno	 		 int,
    count		 int,
    price		 int,
    
	constraint fk_selectedGoods_orders foreign key (pno) 
    references orders(pno),
	constraint fk_selectedGoods_listGoods foreign key (fno) 
    references listGoods(fno)
);



-- 조회
select * from selectedGoods;

select  sno,
		pno,
		fno,
		count,
        price
from selectedGoods
;




-- 등록
insert into selectedGoods
values( null, 1, 1, 1, 99000 )
;

















-- 등록
insert into goods
values(null, 'goods1', 99000, 'hybrid30/hybrid_black_small.jpg')
;

insert into goods
values(null, 'goods2', 88000, 'hybrid30/hybri30_red.jpg')
;

insert into goods
values(null, 'goods3', 77000, 'hybrid30/hybri30_white.jpg')
;

insert into goods
values(null, 'goods4', 44000, 'hybrid30/hybri30_yellow.jpg')
;




insert listgoods values ( null, 8, 1 );
insert listgoods values ( null, 9, 2 );
insert listgoods values ( null, 10, 3 );
insert listgoods values ( null, 4, 4 );










