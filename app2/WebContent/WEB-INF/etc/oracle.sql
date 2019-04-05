create sequence faq_idx_seq increment by 1 start with 1;

create table faq(
	faq_idx int primary key,
	category varchar2(50) not null,
	subject varchar2(100) not null,
	content varchar2(2000) not null,
	write_date date not null,
	hit number default 0
)

alter session set nls_date_format ='YYYY-MM-DD HH24:MI'



drop sequence faq_idx_seq;
drop table faq;


insert into faq(faq_idx, category,subject, content, write_date) 
values(faq_idx_seq.nextval, '1','1','1', sysdate);