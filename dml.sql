use student_examination_sys;
-- 插入记录

insert into student (id, name, age, sex)
values ('1901', '小明', 10, '男');

-- 修改记录
update student
set name = '大明'
where id like '1901';

-- 删除记录
delete from student
where id like '1901';

-- 查询记录
select * from student where id like '1901'
