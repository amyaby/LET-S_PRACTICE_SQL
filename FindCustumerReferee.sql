# Write your MySQL query statement below
CREATE TABLE Customer(
    id int primary key,
    name varchar(50),
    referee_id int
);
INSERT INTO Customer(id,name,refree_id)
Values
      (1,'Will',null),
      (1,'Jane',null),
      (1,'Alex',2),
      (4, 'Bill',null),
      (5,'Zack',1),
      (6 ,'Mark' ,2);
SELECT name FROM Customer WHERE referee_id IS null or referee_id != 2