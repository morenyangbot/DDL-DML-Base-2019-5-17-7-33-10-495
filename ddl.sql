-- **数据库级别：**
--  显示所有数据库
show databases;

--  进入某个数据库
use information_schema;

--  创建一个数据库
create database if not exists information_schema;

--  创建指定字符集的数据库
create database if not exists information_schema CHARACTER SET utf8 COLLATE utf8_general_ci;

--  显示数据库的创建信息
show create database information_schema;

--  修改数据库的编码
alter database information_schema CHARACTER SET utf8;

--  删除一个数据库
drop database if exists information_schema;

-- **表级别**
--  修改表名
rename table student_examination_sys.student to t_student;

--  修改字段的数据类型
alter table student_examination_sys.student
    modify name varchar(100);

--  修改字段名
alter table student_examination_sys.student
    change name stu_name varchar(100);

--  添加字段
alter table student_examination_sys.student
    add height int(10);

--  删除字段
alter table student_examination_sys.student
    drop height;

--  修改表的存储引擎
alter table student_examination_sys.student
    ENGINE = INNODB;

--  删除表的外键约束
alter table student_examination_sys.score
    drop foreign key fk_stu_id;

--  删除一张表
drop table student_examination_sys.student;
