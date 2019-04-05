1. 회원
create table movie_user(
username varchar2(12) not null,
userid varchar2(16) primary key,
password varchar2(16) not null,
email varchar2(30) not null,
password_q varchar2(2) not null,
password_a varchar2(30) not null,
phone varchar2(15) not null,
phone_zip varchar2(15),
postcode varchar2(10) not null,
address varchar2(50) not null,
detailAddress varchar2(12),
birth date not null,			
sex varchar2(6) not null,
mileage number default 0
)

# 날짜 형식 변경
alter session set nls_date_format="YYYY-MM-DD"
alter session set nls_date_format ='DD-MON-YYYY HH24:MI:DD'
alter session set nls_date_format ='YYYY-MM-DD HH24:MI'
 

insert into movie_user values('손동민', 'son', '1234', 'email', 'pq', 'pa', 'phone', 'pzip', '1234','address','detail', '1994-01-01','남', 100000);	

2. 영화 정보

create table movie_info(
name varchar2(100) primary key, 
play_start date not null, 
play_end date not null,
image_file varchar2(200),
grade number
)

insert into movie_info values('극한직업', '2019-02-27', '2019-03-27', 'images/one.jpg' ,3);
insert into movie_info values('드래곤 길들이기', '2019-02-15', '2019-03-15', 'images/two.jpg',  4);
insert into movie_info values('', '2019-02-20', '2019-03-02', 5)



3. 영화 티켓
티켓번호
회원pk, 영화pk 상영FK 시간/날짜/관
가격
별점/리뷰

 
create table movie_ticket(
ticket_number varchar2(100) PRIMARY KEY,	
user_id varchar2(40) not null,
movie_name varchar2(100) not null,
purchase_date date not null,
watch_date date not null,
price number not null,
grade number,
review varchar(100)
)

insert into movie_ticket 
values('13','son','극한직업','2019-02-25 12:00','2019-03-04 11:40',10000,3,'good');



insert into movie_ticket
values('1','csh','극한직업',sysdate,'2019-03-11 07:00',8000,3,null);
insert into movie_ticket 
values('2','csh','드래곤 길들이기','2019-02-26 12:00','2019-02-28 07:00',8000,4,null);
insert into movie_ticket 
values('3','csh','극한직업','2019-02-28 12:00','2019-03-02 11:40',10000,4,'good');
insert into movie_ticket 
values('4','csh','극한직업','2019-02-28 12:00','2019-03-08 11:40',10000,4,'good');
insert into movie_ticket 
values('6','son','극한직업','2019-02-27 12:00','2019-03-08 07:00',8000,null,null);
insert into movie_ticket 
values('7','csh','극한직업','2019-02-24 12:00','2019-03-09 11:40',10000,3,'good');
insert into movie_ticket 
values('8','csh','극한직업','2019-02-27 12:00','2019-02-28 07:00',8000,null,null);
insert into movie_ticket 
values('9','csh2','극한직업','2019-02-27 12:00','2019-03-02 07:00',8000,null,null);

 
4. 시간, 좌석
 
create table movie_seat(
time_start varchar2(6) primary key,
seat number not null,
price number not null
); 

insert into movie_seat values('07:00', 300, 8000);
insert into movie_seat values('09:20', 300, 8000);
insert into movie_seat values('11:40', 300, 10000);
insert into movie_seat values('14:00', 300, 10000);
insert into movie_seat values('16:20', 300, 10000);
insert into movie_seat values('18:40', 300, 10000);
insert into movie_seat values('21:00', 300, 10000);
insert into movie_seat values('23:20', 300, 10000);
insert into movie_seat values('25:40', 300, 8000);


drop table movie_user;
drop table movie_info;
drop table movie_ticket;
drop table movie_seat;

insert into movie_user
     values('hyun', 'csh', 'password', 'email', 'pq', 'pa', 'phone', 'pzip',
     '1234','address','detail', '1994-01-01','남');	
     
select * from MOVIE_USER;

# 날짜 검색
select * from movie_info where '2019-2-24' between play_start and play_end;

# 시간별 좌석 개수
select time_start, nvl((bs.seat - rs.count_seat), bs.seat) as seat
from movie_seat bs 
LEFT OUTER JOIN (select time_start as time_started, count(*) as count_seat
from movie_ticket t, movie_seat s
where movie_name='극한직업' and to_char(watch_date, 'YYYY-MM-DD') ='2019-02-28' and time_start = to_char(watch_date, 'HH24:MI')
group by time_start,seat) rs ON bs.time_start = rs.time_started

select time_start, nvl((bs.seat - rs.count_seat), bs.seat) as seat
from movie_seat bs 
LEFT OUTER JOIN (select time_start as time_started, count(*) as count_seat
from movie_ticket t, movie_seat s
where movie_name='극한직업' and to_char(watch_date, 'YYYY-MM-DD') ='2019-02-28' and time_start = to_char(watch_date, 'HH24:MI')
group by time_start,seat) rs ON bs.time_start = rs.time_started


# 마일리지 사용 내역
select watch_date, movie_name, price
from movie_ticket
where user_id = 'csh' and to_char(watch_date,'YYYY-MM-DD')
between to_date('2019-01-10', 'YYYY-MM-DD') and to_date('2019-02-28', 'YYYY-MM-DD');

# 고객 예매 내역
select ticket_number, movie_name, watch_date, time_start
from movie_ticket
where user_id = 'csh' and to_char(watch_date, 'YYYY-MM-DD') >= to_char(sysdate, 'YYYY-MM-DD')

# 영화 예매 취소
select price from movie_ticket where ticket_number = '1' and user_id = 'csh';
delete from movie_ticket where ticket_number = '1' and user_id = 'csh';
update movie_user set mileage=mileage+8000 where user_id='csh' 

