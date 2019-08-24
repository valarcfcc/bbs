CREATE  database test;

create  table  userinfo(
   id int not null  auto_increment,
   username varchar(20)    unique,
   password  varchar(20) not null,
   sex  varchar(8) not null,
   age varchar(4),
   telephone varchar(12),
   email varchar(40) not null,
   primary  key  (id)
   );
create  table discuss(
   name  char(20) not null,
   email char(40) not null,
   subject char(60) not null,
   content text not null,
   time  char(40),
   username char(20),
   id int not null auto_increment,primary  key  (id)
   );
create  table reply(
   name  char(20) not null,
   content text not null,
   time  char(40),
   reply  int,
   id int not null  auto_increment,
   primary  key  (id)
   );
