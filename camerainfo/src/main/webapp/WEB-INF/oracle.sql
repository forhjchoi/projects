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
select * from community
select * from gallary_work

select * from (select num, type, title, author, content, pic, rownum, ceil(rownum/6) as page from 
(select * from gallary_work order by num desc)) where type = 0

select * from (select num, type, title, author, content, pic, rownum, ceil(rownum/#{rowsPerPage}) as page from
			(select * from gallary_work where title like '%'||#{keyword}||'%' or content like '%'||#{keyword}||'%' order by num desc))
			
insert into community (idx, type, name, email, title, content, wdate, hits)
		values (community_seq.NEXTVAL, 0, 'aa1', 'aa1', 'aa1', 'aa1', SYSDATE, 0)