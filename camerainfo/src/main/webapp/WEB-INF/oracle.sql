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

select * from (select num, type, title, author, content, pic, rownum, ceil(rownum/3) as page from
			(select * from gallary_work where title like '%a%' or content like '%a%' order by num desc)) where type = 0

			
select * from (select num, type, title, author, content, pic, hits, rownum, ceil(rownum/6) as page from
			(select * from gallary_work where title like '%a%' order by num desc)) where type = 0
			
			select * from (select num, type, title, author, content, pic, hits, rownum, ceil(rownum/6) as page from
			(select * from gallary_work where content like '%a%' order by num desc)) where type = 0
			
			
select * from (select num, type, title, author, content, pic, rownum, ceil(rownum/6) as page from
			(select * from gallary_work where title like '%b%' or content like '%b%' order by num desc))
			
			select * from (select num, type, title, author, content, pic, hits, rownum, ceil(rownum/6) as page from
			(select * from gallary_work where content like '%b%' order by num desc))
			
			
select * from (select num, type, title, author, content, pic, rownum, ceil(rownum/3) as page from
			(select * from gallary_work where type = 1 order by num desc)) where page = 1