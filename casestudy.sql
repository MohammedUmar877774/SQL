create database truYum;
use truYum;
create table menu(
menu_id int,menu_name varchar(20),price int,active varchar(5),date_of_launch date,category varchar(20),free_delivery varchar(5)
);

insert into menu values(
01,"sandwich","Rs.99.00","yes","2017-03-15","Main Course","yes"
);

describe menu;
select * from menu;
alter table menu modify price int;

insert into menu values(
02,"burger","129.00","yes","2017-12-23","Main Course","no"
);
insert into menu values(
03,"pizza","149.00","yes","2017-08-21","Main Course","no"
);
insert into menu values(
04,"French Fries","57.00","no","2017-07-02","starters","yes"
);
insert into menu values(
05,"chocolate","32.00","yes","2017-11-02","dessert","yes"
);
update menu set price="32" where menu_id="5";
select * from menu where date_of_launch<="2019-10-10" and active="yes";
create table users(user_id varchar(20)primary key,user_name varchar(20));

insert into users values("101","saif");
insert into users values("102","umar");
select * from menu;
select * from users;
select * from cart;

create table cart(
cart_id varchar(20) primary key,user_id varchar(20),menu_id int,
foreign key(user_id) references users(user_id),foreign key(menu_id) references menu(menu_id)
);
insert into cart values("c003","102","4");

select m.menu_name from menu m
inner join cart c on m.menu_id=c.menu_id
inner join users u on u.user_id=c.user_id;

select sum(price) as Totalprice from menu m
inner join cart c on m.menu_id=c.menu_id
inner join users u on u.user_id=c.user_id;

delete from cart where user_id="102" and menu_id="4";










