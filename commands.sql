Enter password: ********
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 25
Server version: 8.0.41 MySQL Community Server - GPL

Copyright (c) 2000, 2025, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> create database employee;
Query OK, 1 row affected (0.01 sec)

mysql> use employee;
Database changed
mysql> create table emp(e_id varchar(10) not null primary key,e_name varchar(50)not null,e_mobileno int not null,e_address varchar(100) not null,e_salary int not null);
Query OK, 0 rows affected (0.03 sec)

mysql> desc emp;
+------------+--------------+------+-----+---------+-------+
| Field      | Type         | Null | Key | Default | Extra |
+------------+--------------+------+-----+---------+-------+
| e_id       | varchar(10)  | NO   | PRI | NULL    |       |
| e_name     | varchar(50)  | NO   |     | NULL    |       |
| e_mobileno | bigint       | YES  |     | NULL    |       |
| e_address  | varchar(100) | NO   |     | NULL    |       |
| e_salary   | int          | NO   |     | NULL    |       |
+------------+--------------+------+-----+---------+-------+
5 rows in set (0.00 sec)

mysql>  insert into emp(e_id,e_name,e_mobileno,e_address, e_salary) values('e1','ram','1267803678','solapur','50000'),('e2','sham','4589803678','nashik','60000'),('e3','meena','1278123678','mumbai','70000'),('e4','teena','5689023980','pune','80000'),('e5','heena','4589264607','goa','90000');
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select from emp;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'from emp' at line 1
mysql> select * from emp;
+------+--------+------------+-----------+----------+
| e_id | e_name | e_mobileno | e_address | e_salary |
+------+--------+------------+-----------+----------+
| e1   | ram    | 1267803678 | solapur   |    50000 |
| e2   | sham   | 4589803678 | nashik    |    60000 |
| e3   | meena  | 1278123678 | mumbai    |    70000 |
| e4   | teena  | 5689023980 | pune      |    80000 |
| e5   | heena  | 4589264607 | goa       |    90000 |
+------+--------+------------+-----------+----------+
5 rows in set (0.00 sec)

mysql> select e_id,e_name,e_address from emp;
+------+--------+-----------+
| e_id | e_name | e_address |
+------+--------+-----------+
| e1   | ram    | solapur   |
| e2   | sham   | nashik    |
| e3   | meena  | mumbai    |
| e4   | teena  | pune      |
| e5   | heena  | goa       |
+------+--------+-----------+
5 rows in set (0.00 sec)

mysql> select * from emp where e_name LIKE '%m';
+------+--------+------------+-----------+----------+
| e_id | e_name | e_mobileno | e_address | e_salary |
+------+--------+------------+-----------+----------+
| e1   | ram    | 1267803678 | solapur   |    50000 |
| e2   | sham   | 4589803678 | nashik    |    60000 |
+------+--------+------------+-----------+----------+
2 rows in set (0.00 sec)

mysql> select * from emp where e_name LIKE 'm%';
+------+--------+------------+-----------+----------+
| e_id | e_name | e_mobileno | e_address | e_salary |
+------+--------+------------+-----------+----------+
| e3   | meena  | 1278123678 | mumbai    |    70000 |
+------+--------+------------+-----------+----------+
1 row in set (0.00 sec)

mysql> select * from emp where e_name LIKE '%ee%';
+------+--------+------------+-----------+----------+
| e_id | e_name | e_mobileno | e_address | e_salary |
+------+--------+------------+-----------+----------+
| e3   | meena  | 1278123678 | mumbai    |    70000 |
| e4   | teena  | 5689023980 | pune      |    80000 |
| e5   | heena  | 4589264607 | goa       |    90000 |
+------+--------+------------+-----------+----------+
3 rows in set (0.00 sec)

mysql> select * from emp where e_name LIKE 't____';
+------+--------+------------+-----------+----------+
| e_id | e_name | e_mobileno | e_address | e_salary |
+------+--------+------------+-----------+----------+
| e4   | teena  | 5689023980 | pune      |    80000 |
+------+--------+------------+-----------+----------+
1 row in set (0.00 sec)

mysql> select * from emp where e_salary>60000;
+------+--------+------------+-----------+----------+
| e_id | e_name | e_mobileno | e_address | e_salary |
+------+--------+------------+-----------+----------+
| e3   | meena  | 1278123678 | mumbai    |    70000 |
| e4   | teena  | 5689023980 | pune      |    80000 |
| e5   | heena  | 4589264607 | goa       |    90000 |
+------+--------+------------+-----------+----------+
3 rows in set (0.00 sec)

mysql> update emp set e_salary=40000 where e_id ='e3';
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from emp;
+------+--------+------------+-----------+----------+
| e_id | e_name | e_mobileno | e_address | e_salary |
+------+--------+------------+-----------+----------+
| e1   | ram    | 1267803678 | solapur   |    50000 |
| e2   | sham   | 4589803678 | nashik    |    60000 |
| e3   | meena  | 1278123678 | mumbai    |    40000 |
| e4   | teena  | 5689023980 | pune      |    80000 |
| e5   | heena  | 4589264607 | goa       |    90000 |
+------+--------+------------+-----------+----------+
5 rows in set (0.00 sec)

mysql> delete from emp where e_id='e5';
Query OK, 1 row affected (0.00 sec)

mysql> select * from emp;
+------+--------+------------+-----------+----------+
| e_id | e_name | e_mobileno | e_address | e_salary |
+------+--------+------------+-----------+----------+
| e1   | ram    | 1267803678 | solapur   |    50000 |
| e2   | sham   | 4589803678 | nashik    |    60000 |
| e3   | meena  | 1278123678 | mumbai    |    40000 |
| e4   | teena  | 5689023980 | pune      |    80000 |
+------+--------+------------+-----------+----------+
4 rows in set (0.00 sec)

mysql>