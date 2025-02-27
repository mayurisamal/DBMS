mysql> create database bank;
Query OK, 1 row affected (0.01 sec)

mysql> use bank;
Database changed

mysql> create table BankAccount (
    ->     account_id int primary key not null,
    ->     account_holder_name varchar(100) not null,
    ->     account_balance int not null
    -> );
Query OK, 0 rows affected (0.04 sec)

mysql> desc bankaccount;
+---------------------+--------------+------+-----+---------+-------+
| Field               | Type         | Null | Key | Default | Extra |
+---------------------+--------------+------+-----+---------+-------+
| account_id          | int          | NO   | PRI | NULL    |       |
| account_holder_name | varchar(100) | NO   |     | NULL    |       |
| account_balance     | int          | NO   |     | NULL    |       |
+---------------------+--------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

//TASK 1:-Inserting Data
mysql> INSERT INTO BankAccount (account_id, account_holder_name, account_balance) VALUES (101, 'John Doe', 25000),(102, 'Jane Smith', 50000),(103, 'Alice Johnson', 15000),(104, 'Bob Brown', 35000);
Query OK, 4 rows affected (0.01 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> select * from bankaccount;
+------------+---------------------+-----------------+
| account_id | account_holder_name | account_balance |
+------------+---------------------+-----------------+
|        101 | John Doe            |           25000 |
|        102 | Jane Smith          |           50000 |
|        103 | Alice Johnson       |           15000 |
|        104 | Bob Brown           |           35000 |
+------------+---------------------+-----------------+
4 rows in set (0.00 sec)

//TASK 2:-Retrieving Data
mysql> SELECT account_holder_name, account_balance FROM BankAccount;
+---------------------+-----------------+
| account_holder_name | account_balance |
+---------------------+-----------------+
| John Doe            |           25000 |
| Jane Smith          |           50000 |
| Alice Johnson       |           15000 |
| Bob Brown           |           35000 |
+---------------------+-----------------+
4 rows in set (0.00 sec)

//TASK 3:-Filtering Data
mysql> SELECT account_holder_name, account_balance FROM BankAccount WHERE account_balance > 30000;
+---------------------+-----------------+
| account_holder_name | account_balance |
+---------------------+-----------------+
| Jane Smith          |           50000 |
| Bob Brown           |           35000 |
+---------------------+-----------------+
2 rows in set (0.00 sec)

//TASK 4:-Updating Data
mysql> UPDATE BankAccount SET account_balance = 30000 WHERE account_id = 101;
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from bankaccount;
+------------+---------------------+-----------------+
| account_id | account_holder_name | account_balance |
+------------+---------------------+-----------------+
|        101 | John Doe            |           30000 |
|        102 | Jane Smith          |           50000 |
|        103 | Alice Johnson       |           15000 |
|        104 | Bob Brown           |           35000 |
+------------+---------------------+-----------------+
4 rows in set (0.00 sec)

mysql>