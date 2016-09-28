select * from tab

create table community (
	idx number(5) not null primary key,
	type number not null,
	name varchar2(50) not null,
	email varchar2(200) not null,
	title varchar2(200) not null,
	content varchar2(1000) not null,
	pic varchar2(500),
	wdate varchar2(20) not null,
	step number(5),
	ref number(5),
	depth number(5),
	hits number(5) not null
)

select * from gallary_work

select * from (select num, type, title, author, content, pic, rownum, ceil(rownum/6) as page from 
(select * from gallary_work order by num desc)) where type = 0