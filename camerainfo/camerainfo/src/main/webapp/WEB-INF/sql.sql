create table gallary_best (
	num number not null primary key,
	type number not null,
	title varchar2(100) not null,
	author varchar2(100) not null,
	pic varchar2(200) not null,
	content varchar2(200),
	hits number not null
)

create table news_camera (
	num number not null primary key,
	title varchar2(500) not null,
	content varchar2(500),
	regdate varchar2(20) not null,
	pic varchar2(500) not null
)

create table news_lens (
	num number not null primary key,
	title varchar2(500) not null,
	content varchar2(500),
	regdate varchar2(20) not null,
	pic varchar2(500) not null
)

create table member (
	id varchar(20) not null primary key,
	passwd varchar2(20) not null,
	passwd2 varchar2(20) not null,
	name varchar2(20) not null,
	nickname varchar2(20) not null,
	email varchar2(100) not null,
	lc number not null,
	birth varchar2(20) not null,
	sex number not null,
	num number not null
)
drop table member

create table info_camera (
num number not null primary key,
brand varchar2(200) not null,
name varchar2(200) not null,
pic varchar2(200) not null,
pixel number,
lens varchar2(200),
shutter varchar2(200),
shutter_speed varchar2(200),
record_type varchar2(200),
iso varchar2(200),
bluetooth varchar2(200)
)

create table info_lens (
num number not null primary key,
brand varchar2(200) not null,
name varchar2(200) not null,
pic varchar2(200) not null,
filter_size varchar2(200),
weight varchar2(200),
max_shot_ratio varchar2(200)
)

create table reviews (
	num number not null primary key,
	type number not null,
	title varchar2(500) not null,
	content varchar2(500),
	regdate varchar2(20) not null,
	pic varchar2(500) not null 
)

create sequence info_lens_seq start with 1 increment by 1 nocache
create sequence gall_mob_seq start with 1 increment by 1 nocache

create sequence gall_mob_seq start with 1 increment by 1 nocache

create sequence news_seq start with 1 increment by 1 nocache

select * from tab;

delete from GALLARY

drop table gallary

insert into gallary_mobile (num, type, title, author, pic, content, hits) values (gal_mob_seq.nextval, 0, 'test', 'test', 'test', 'test', 0)
select * from GALLARY_MOBILE where type = 0


select * from (select num, name, pic, pixel, lens, shutter, shutter_speed, record_type, iso, bluetooth, ceil(rownum/3) as page from (select * from info_camera where brand = 'Nikon' order by num desc)) where page = 2


update gallary_mobile set hits = NVL2(hits, hits + 1, 1) where num = 2 and type =0

select num, hits from gallary_mobile where num = 2 and type = 0

select * from (select num, brand, name, pic, pixel, lens, shutter, shutter_speed, record_type, iso, bluetooth, rownum, ceil(rownum/3) as page from (select * from info_camera order by num desc))

select ceil(rownum/3), rownum, num from (select * from reviews where type = 0 order by num desc) where ceil(rownum/3) = 2
select * from (select num, title, content, regdate, pic, ceil(rownum/3) as page from (select * from reviews where type = 1 order by num desc)) where page = 3
select * from reviews where type = 1 order by num desc
insert into reviews (num, type, title, content, regdate, pic) values (reviews_seq.NEXTVAL, 0, 'test', 'test', '2016-09-07', 'test')
select * from (select num, title, content, regdate, pic, ceil(rownum/3) as page from (select * from reviews where type = 0 order by num desc)) where page = 2